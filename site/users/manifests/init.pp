class users {

user { 'fundamentals':
  ensure => present,
  }
  
user { 'bart':
  ensure => present,
  }
  
}
