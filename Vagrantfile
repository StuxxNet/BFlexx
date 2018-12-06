Vagrant.configure("2") do |config|

    config.vm.box = "suse/sles12sp2"
    config.vm.box_version = "0.0.1"

    config.vm.define :gitlab do |gitlab|
        gitlab.vm.network "private_network", ip: "192.168.1.10"
        gitlab.vm.provider "virtualbox" do |gitlab_provider|
            gitlab_provider.memory = 4096
        end
    end

end