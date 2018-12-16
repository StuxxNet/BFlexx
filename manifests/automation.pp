exec{"apt-update":
  command => "/usr/bin/apt-get update"
}

package{"ansible":
  ensure => present,
  require => Exec['apt-update']
}

#file{"/etc/ansible/hosts":
#  source => "configs/ansible_hosts",
#  owner => root,
#  group => root,
#  mode => 0744,
#  ensure => present,
#  require => Package['ansible'],
#}
