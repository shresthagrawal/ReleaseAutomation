#!/bin/sh

rm -rf releaseAutomationEnv
mkdir releaseAutomationEnv
cd releaseAutomationEnv

vagrant init 
#vagrant box add fedora/29-cloud-base --force

/bin/cat <<EOM >Vagrantfile
Vagrant.configure("2") do |config|
  config.vm.box = "fedora/29-cloud-base"

  config.ssh.insert_key = false


  config.vm.provision "ansible" do |ansible|
    ansible.extra_vars = { ansible_python_interpreter: "/usr/bin/python3" }
    ansible.playbook = "../$1"
  end

end
EOM

vagrant up

#grep with regex
HostName=$(vagrant ssh-config | grep 'HostName')
HostName=${HostName#*'HostName '}
Port=$(vagrant ssh-config | grep 'Port')
Port=${Port#*'Port '}
echo $HostName:$Port


#Create an inventory manually 
#/bin/cat <<EOM >../vagrantInventory.ini
#[Vagrant]
#$HostName         ansible_port=$Port     ansible_user=vagrant     ansible_ssh_private_key_file='~/.vagrant.d/insecure_private_key'     ansible_python_interpreter=/usr/bin/python3
#EOM


vagrant destroy -f
cd ../
rm -rf releaseAutomationEnv
