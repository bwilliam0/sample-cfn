# Sample Cloudformation Scripts

The following CFN scripts are some samples that were originally used to build a simple VPC with a few subnets, NAT instances instead of NAT gateways (to save money) a "bastion host" that isn't really any differnt than any other host, and a few app servers and a load balancer and ASG to hold them together.

## Current Issues

### AMI Maps are out of date

This is an issue that will always be present, but is good to be aware of. Before these templates can be useful the AMI maps should be updated with more recent images, especially for bastion and NAT instances where security may be a concern.

### Nested template parameters are broken

When generalizing the templates and removing hard coded references to keys new parameters were added to several templates. The templates that references these "nested templates" will need to be updated to specify keys, or pass that dependency upwards. 

### User Data needs updating

User data for these instances all assumes that these instances used Ubuntu as there OS, and had user data to update a new ubuntu instace. However the NAT instances use Amazon Linux 1, so I removed their user data, however without proper user data they may be out of date after launch. Other instances still have user data, but if you change the OS they run on they too will be out of date. 