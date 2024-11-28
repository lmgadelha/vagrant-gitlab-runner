Vagrant.configure("2") do |config|
  config.vm.define "app" do |app|
    app.vm.box = "ubuntu/focal64"
    app.vm.network "private_network", ip: "192.168.56.8"
    app.vm.provider "virtualbox" do |vb|
      vb.memory = 512
    end
    app.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y python3
    SHELL
  end

  config.vm.define "db" do |db|
    db.vm.box = "ubuntu/focal64"
    db.vm.network "private_network", ip: "192.168.56.10"
    db.vm.provider "virtualbox" do |vb|
      vb.memory = 512
    end
    db.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y python3
    SHELL
  end
end