# ssh_log_monitoring

## Prerequisites
Assuming mailutils is preconfigured

Edit the recipient variable in script to own mail id



### Cron example

This will run at 23:59 every day

59 23 * * * </path/to/ssh_log_monitoring.sh>

If added in cron job will send ssh log for authenticated and failed logins for the ssh server
