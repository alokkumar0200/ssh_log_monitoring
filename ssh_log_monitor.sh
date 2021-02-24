#!/bin/bash
recipient="user@test.com"
curr_time="$(date "+%b %d")"
log=`journalctl -u sshd`
curr_log=$(echo "$log" | grep "$curr_time")
failed_pass_valid_user=$(echo "$curr_log" | grep -P "Failed password for [a-z][-a-z0-9]* from")
failed_pass_invalid_user=$(echo "$curr_log" | grep "Failed password for invalid")
accepted_user=$(echo "$curr_log" | grep "Accepted password for")
echo "=========FAILED AUTH FOR VALID USER=========" > formatted.log;
echo "$failed_pass_valid_user" >> formatted.log;
echo "==========FAILED AUTH FOR INVALID USER=========" >> formatted.log;
echo "$failed_pass_invalid_user" >> formatted.log;
echo "==========ACCEPTED LOGINS=========" >> formatted.log;
echo "$accepted_user" >> formatted.log;
mail -s "SSH LOG FOR $curr_time" $recipient < ./formatted.log;
rm ./fromatted.log;
