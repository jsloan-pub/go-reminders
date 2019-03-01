# Concourse Deployment
This directory contains a couple sample [Helm](https://helm.sh) values files
for use in deploying concourse for use as the ci/cd engine to build
go-reminders.

Note that when installing with either values file, the default username and
password for logging in to concurse is as follows.

    user: vmware
    password: VMware1!

## Installing Into Minikube
To deploy to minikube, assure that you have a /etc/hosts or another DNS entry
mechanism that points minikube.corp.local at your minikiube ip address. Then
issue this to start concourse:

    helm install --name concourse -f minikube.yml stable/concourse

Once fully deployed, you can then browse to http://minikube.corp.local to
reach the concourse server. For fly login, issue this:

    fly -t go-reminders login  --concourse-url=http://minikube.corp.local -u vmware -p 'VMware1!'

and then fly away!

## PKS
TODO
