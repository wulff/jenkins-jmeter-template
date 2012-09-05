Jenkins JMeter template
=======================

A basic template for setting up JMeter jobs in Jenkins.


Installation
------------

### Setting up your project

1. Copy the file `jmeter.example.sh` to `<project>/jmeter/jmeter.sh`.
2. Modify the JMeter path in `jmeter.sh` to match your system (it's usually `/usr/bin/jmeter` or `/usr/share/jmeter/bin/jmeter`).

### Setting up Jenkins

1. Copy this directory to `/var/lib/jenkins/jobs/jmeter-template`.
2. Create a new job and select *Copy existing job*, enter `jmeter-template` in the *Copy from* field.
3. Uncheck the *Disable Build* checkbox
4. Configure the *Source Code Management* build step to check out a copy of the repository containing your test plans.
5. Modify the *Execute shell* build step to match the location of your test plans and to add any additional arguments to JMeter.


Requirements
------------

To use this template in Jenkins you must install the *Performance* plugin.