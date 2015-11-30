# compliance
Stand up an instance of Chef compliance server

Basic Minimal viable install on both redhat 7.1 and 6.7.

Stands up by default on https://192.168.56.81 ( default subnet 192.168.56.xx for virtualbox ).

`User:  chef`

`Pass:  chef`

Must have a local directory called `~/chef-kits/.ssh` already created

Also the rpm file has to already be downloaded and available in the following directory `~/chef-kits/chef`

Creates the id_rsa, and id_rsa.pub files in the .ssh directory created above, and then appends the public key onto the ~/.ssh/authorized_keys file on both compliance server and node01.  This allows you to easily add the keys to compliance, and then add the node01 ( 192.168.56.81 ) to compliance for scanning.  Currently passwordless keys are supported only.  
# Roadmap

Add compliance API calls to add keys and node to compliance

Make idempotent, once mvp proven

Investigate chef-ingredient instead of bash scripting install ( but try to avoid dependency complexity )
