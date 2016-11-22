Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  isWindows = Vagrant::Util::Platform.windows?
  provisioner = isWindows ? :guest_ansible : :ansible
 
  # ensure rquired plugins exist
  unless Vagrant.has_plugin?("vagrant-guest_ansible")
    raise 'vagrant-guest_ansible plugin is missing, install it using command "vagrant plugin install vagrant-guest_ansible"'
  end

  # configure virtualbox resources
  config.vm.provider "virtualbox" do |v|
    v.memory = 4000
    v.cpus = 1
  end

  # configure vb guest plugin
  config.vbguest.auto_update = true
  config.vbguest.no_install = false

  # private network 
  config.vm.network "private_network", ip: "192.168.10.90"

  # sync folder
  config.vm.synced_folder "app", "/app", create: true
  config.vm.synced_folder "ansible", "/ansible", create: true
  config.vm.synced_folder "scripts", "/scripts", create: true

  # provisioner
  
  # First, we install ansible on guest machine using shell
  config.vm.provision "shell" do |shell|
    shell.path="scripts/run-ansible.sh"
  end

  # config.vm.provision provisioner do |ansible| 
  #   #ansible.limit = 'play_vagrant'
  #   ansible.verbose="-vvv"
  #   ansible.playbook = "ansible/playbook.yml"
  # end
end