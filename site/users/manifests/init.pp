class users {

user { 'fundamentals':
  ensure => present,
  }
  
user { 'bart':
  ensure => present,
  home => '/home/bart',
  managehome => true,
  }
  
}
