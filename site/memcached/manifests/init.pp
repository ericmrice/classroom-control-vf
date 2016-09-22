class memcached {

  package { 'memcached':
    ensure => present,
  }

  file { 'memcached':
    ensure => file,
    path => '/etc/sysconfig/memcached',
    require => package['memcached'],
    source => 'puppet:///modules/memcached/memcached',
  }

  service { 'memcached':
    ensure => running,
    subscribe => file['memcached'],
  }



}
