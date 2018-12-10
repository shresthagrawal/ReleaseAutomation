# How to setup Environment using auto config

$ ./setup.sh <pathToAnsible.yml>

eg.

$ ./setup.sh seLinuxTest.yml

# how to use the auto config env

Method 1:

$ cd ReleaseAutomationEnv; vagrant provision;

Method 2: 

$ ansible-playbook -i vagrantInventory.ini <pathToAnsible.yml>

Asciinema -> setupRecording.cast

