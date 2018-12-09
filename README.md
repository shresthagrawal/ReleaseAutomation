# ReleaseAutomation

This Role tries to Automate the validation process using ansible for the below mentioned tasks.

https://fedoraproject.org/wiki/QA:Testcase_base_service_manipulation
https://fedoraproject.org/wiki/QA:Testcase_base_selinux
https://fedoraproject.org/wiki/QA:Testcase_base_services_start
https://fedoraproject.org/wiki/QA:Testcase_base_system_logging

Install vagrant and ansible

clone the repo and from the root dir use the below command to start testing on the latest fedora version
$ vagrant up
$ vagrant provison


As per the given Instruction I have used the vagrant to test the base_seLinux. I have updated my previous repo on fedora release validation where I already automated two validations tasks using ansible and jenkins with this latest update now their are four tasks (Testcase_base_service_manipulation, Testcase_base_selinux, Testcase_base_services_start, Testcase_base_system_logging) . When this project is started vagrant will automatically download the latest image for the fedora and perform all of the four validations automatically which solves the purpose.

comming to this task of ansibleSeLinux you can either use the role to verify it or else you can check the playbook in IndividualTest/seLinuxTest.yml the asciinema for that is IndividualTest/demoSelinuxTest.cast. One last thing I have also created a playbook (and also added in role) the baseServiceManipulation(IndividualTest/serviceManipulation.yml) task. I already coded it a few days ago but I wasnt able to claim it as I was busy in adding fedora planet to fedora app. I will be really thankfull if you can atleast review that also. Hope you like the work. I further plan to extent this role to the leftover 4-5 release validations so that this can be actually used.    
