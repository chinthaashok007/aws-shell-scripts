# Cron Job (Run every 2 minutes)
*/2 * * * * /home/ubuntu/aws_resource_tracker.sh >> /home/ubuntu/aws_resource_tracker.log 2>&1

# Log File
/home/ubuntu/aws_resource_tracker.log

# To view the output:
cat /home/ubuntu/aws_resource_tracker.log

# see live updates every 2 minutes:
tail -f /home/ubuntu/aws_resource_tracker.log
