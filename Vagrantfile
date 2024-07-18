Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.ssh.insert_key = false
  config.vm.define "vagrant1" do |vagrant1|
  vagrant1.vm.box = "ubuntu/jammy64"
  vagrant1.vm.hostname = "demo-03"
  vagrant1.vm.network :public_network, ip: '192.168.0.113'
  vagrant1.vm.network "forwarded_port", guest: 80, host: 8080
  vagrant1.vm.network "forwarded_port", guest: 443, host: 8443
  vagrant1.vm.network "forwarded_port", guest: 5432, host: 65432
end
  config.vm.define "vagrant2" do |vagrant2|
  vagrant2.vm.box = "ubuntu/jammy64"
  vagrant2.vm.hostname = "demo-02"
  vagrant2.vm.network :public_network, ip: '192.168.0.112'
  vagrant2.vm.network "forwarded_port", guest: 80, host: 8081
  vagrant2.vm.network "forwarded_port", guest: 443, host: 8444
  vagrant2.vm.network "forwarded_port", guest: 5432, host: 65433
end
config.vm.provider :virtualbox do |vb|
  vb.memory = "600"
    vb.cpus = "1"