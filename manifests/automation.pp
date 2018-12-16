exec{"apt-update":
  command => "/usr/bin/apt-get update"
}

package{"ansible":
  ensure => present,
  require => Exec["apt-update"]
}

file{"/etc/ansible/hosts":
  source => "file:///vagrant/manifests/configs/hosts",
  owner => root,
  group => root,
  mode => "0644",
  ensure => present,
  require => Package["ansible"],
}

file{"/etc/ansible/ansible.cfg":
  source => "file:///vagrant/manifests/configs/ansible.cfg",
  owner => root,
  group => root,
  mode => "0644",
  ensure => present,
  require => Package["ansible"]
} 

file {"/etc/ansible/roles": 
  ensure => "directory",
  owner => root,
  group => root,
  mode => "0644",
}

file {"/etc/ansible/keys":
  ensure => "directory",
  owner => root,
  group => root,
  mode => "0644",
}
