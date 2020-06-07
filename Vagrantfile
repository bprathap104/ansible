Vagrant.configure("2") do |config|
  config.vm.define "ansible_controller" do |ac|
    ac.vm.hostname = "ansible-controller"
    ac.vm.box = "ol74"
    ac.vm.box_url = "http://yum.oracle.com/boxes/oraclelinux/ol74/ol74.box"
    ac.vm.network "private_network", ip: "192.168.56.10"
    ac.vm.network "public_network", :bridge => 'eth1'
    ac.vm.provider "virtualbox" do |vm|
      vm.name = "Ansible_Controller"
      vm.memory = 1024
      vm.cpus = 2
    end
  end
  config.vm.define "target_1" do |t1|
    t1.vm.hostname = "target-1"
    t1.vm.box = "ol74"
    t1.vm.box_url = "http://yum.oracle.com/boxes/oraclelinux/ol74/ol74.box"
    t1.vm.network "private_network", ip: "192.168.56.20"
    t1.vm.network "public_network", :bridge => 'eth1'
    t1.vm.provider "virtualbox" do |vm|
      vm.name = "Target_Node1"
      vm.memory = 1024
      vm.cpus = 2
    end
  end
end
