Vagrant.configure("2") do |config|

    config.vm.box = "centos/7"

    config.vm.define :gitlab do |gitlab_config|
        gitlab_config.vm.network "private_network", ip: "192.168.1.10"
        gitlab_config.vm.provider "virtualbox" do |gitlab_config_provider|
            gitlab_config_provider.memory = 4096
        end
    end

    config.vm.define :apache do |apache_config|
        apache_config.vm.network "private_network", ip: "192.168.1.20"
        apache_config.vm.provider "virtualbox" do |apache_config_provider|
            apache_config_provider.memory = 1024
        end
    end

    config.vm.define :docker do |docker_config|
        docker_config.vm.network "private_network", ip: "192.168.1.30"
        docker_config.vm.provider "virtualbox" do |docker_config_provider|
            docker_config_provider.memory = 2048
        end
    end

    config.vm.define :mssql do |mssql_config|
        mssql_config.vm.box = "msabramo/mssqlserver2014express"
        mssql_config.vm.network "private_network", ip: "192.168.1.40"
        mssql_config.vm.provider "virtualbox" do |mssql_config_provider|
            mssql_config_provider.memory = 1024
        end
    end

    config.vm.define :automation do |automation_config|
        automation_config.vm.network "private_network", ip: "192.168.1.50"
        automation_config.vm.provider "virtualbox" do |automation_config_provider|
            automation_config_provider.memory = 1024
        end
    end

end