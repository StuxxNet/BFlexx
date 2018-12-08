exec{"yum-update":
  command => "/usr/bin/yum update"
}

package{"ansible":
  ensure => present,
  require => Exec['yum-update']
}

file{"/etc/ansible/hosts":
  source => "configs/ansible_hosts",
  owner => root,
  group => root,
  mode => 0744,
  ensure => present,
  require => Package['ansible'],
}
