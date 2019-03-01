# MySQL Deployment
This directory contains a sample [Helm](https://helm.sh) values file
for use in deploying mysql as a backing service for go-reminders.

Note that when installing per these instructions, the users and passwords are
are setup as follows:

| MySQL User | Password |
| -----------| ---------|
| root       | VMware1! |
| vmware     | VMware1! |

The go-reminders dataase will be created and will be called "go-reminders."

## Installing
To deploy mysql, issue the following command:

    helm install --name go-reminders-mysql -f values.yml --namespace=go-reminders stable/mysql

## Obtaining DB information:
Once deployed, Helm will show the database host value that should be provided
within the values.yml file used for [deploying go-reminders](../helm) with
helm.

For go-reminders, use the "vmware" user information above.
