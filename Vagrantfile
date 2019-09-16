Vagrant.configure("2") do |config|
  config.vm.box = "brightspot-aws"

  config.vm.provider :aws do |aws, override|
    aws.keypair_name = <YOUR_KEYPAIR_NAME>
    aws.security_groups = <YOUR_SECURITY_GROUP_NAME>

    override.ssh.username = "vagrant"
    override.ssh.private_key_path = <PATH_TO_YOUR_PRIVATE_KEY>
  end

  config.nfs.functional = false
  config.smb.functional = false

  config.vm.synced_folder "./site/target/", "/vagrant", type: "rsync"

  config.vm.provision "shell", path: "https://github.com/peaster/brightspot-vagrant-aws/raw/master/provisioner.sh"
end
