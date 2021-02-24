# ssh_log_monitoring

## Assuming mailutils is preconfigured
## Edit the recipient variable in script to own mail id

If added in cron job will send ssh log for authenticated and failed logins to the ssh server

### Cron example

This will run at 23:59 every day
59 23 * * * </path/to/ssh_log_monitoring.sh>
