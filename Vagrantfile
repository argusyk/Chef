Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.provision "chef_zero" do |chef|
    chef.arguments = "--chef-license accept"
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe "apache2"
    chef.add_recipe "nginx"
    chef.add_recipe "mysql"
    chef.add_recipe "php"
    chef.nodes_path = 'nodes'
  end
end
