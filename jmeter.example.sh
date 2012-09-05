#!/bin/bash

# This is a wrapper script used to run the JMeter tool from a Jenkins build
# task. It runs the JMeter client in headless mode and specifies the location
# of the output file. The test plans to run must me given as parameters in the
# Jenkins job configuration.

echo "### Running JMeter performance test ###"

# clear out old results
if [ -f $WORKSPACE/logs/jmeter.jtl ] ; then
  echo "## Removing old test results"
  rm $WORKSPACE/logs/jmeter.jtl
fi

# run the tests
echo "## Running the tests"
/usr/share/jmeter/bin/jmeter -n -l $WORKSPACE/logs/jmeter.jtl "$@"