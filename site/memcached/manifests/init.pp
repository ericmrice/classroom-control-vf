class memcached {

  package { 'memcached':
    ensure => present,
  }

  file { 'memcached':
    ensure => file,
    owner => 'root',
    group => 'root',
    mode => '0644',
    path => '/etc/sysconfig/memcached',
    require => Package['memcached'],
    source => 'puppet:///modules/memcached/memcached',
  }

  service { 'memcached':
    ensure => running,
    enable => true,
    subscribe => File['memcached'],
  }

}
