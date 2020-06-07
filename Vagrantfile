Vagrant.configure("2") do |config|
  config.vm.define "ansible_controller" do |ac|
    ac.vm.hostname = "ansible-controller"
    ac.vm.box = "ol74"
    ac.vm.box_url = "http://yum.oracle.com/boxes/oraclelinux/ol74/ol74.box"
    ac.vm.network "public_network", :bridge => 'eth1'
    ac.vm.provider "virtualbox" do |vm|
      vm.name = "Ansible_Controller"
      vm.memory = 1024
      vm.cpus = 2
    end
    ac.vm.provision "shell", path: "scripts/ssh.sh" 
  end
  config.vm.define "target_1" do |t1|
    t1.vm.hostname = "target-1"
    t1.vm.box = "ol74"
    t1.vm.box_url = "http://yum.oracle.com/boxes/oraclelinux/ol74/ol74.box"
    t1.vm.network "public_network", :bridge => 'eth1'
    t1.vm.provider "virtualbox" do |vm|
      vm.name = "Target_Node1"
      vm.memory = 1024
      vm.cpus = 2
    end
    t1.vm.provision "shell", path: "scripts/ssh.sh" 
  end
  config.vm.define "target_2" do |t2|
    t2.vm.hostname = "target-2"
    t2.vm.box = "ol74"
    t2.vm.box_url = "http://yum.oracle.com/boxes/oraclelinux/ol74/ol74.box"
    t2.vm.network "public_network", :bridge => 'eth1'
    t2.vm.provider "virtualbox" do |vm|
      vm.name = "Target_Node1"
      vm.memory = 1024
      vm.cpus = 2
    end
    t2.vm.provision "shell", path: "scripts/ssh.sh" 
  end
end
