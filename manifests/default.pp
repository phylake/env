Exec { path => ['/usr/bin'] }

class packages {
  package { 'git':
    ensure => installed
  }
  package { 'unzip':
    ensure => installed
  }
  package { 'curl':
    ensure => installed
  }
  package { 'llvm':
    ensure => installed
  }
  package { 'clang':
    ensure => installed
  }
  package { 'haskell-platform':
    ensure => installed
  }
  package { 'haskell-platform-prof':
    ensure => installed
  }
}

class cabal {
  exec {'cabal update':
    command => 'cabal update'
  }

  exec { 'cabal_install':
    command => 'cabal_install',
    require => Exec['cabal update'],
    path => '/vagrant'
  }
  
  # exec { 'vector':
  #   command => 'cabal install vector',
  #   require => Exec['cabal update'],
  #   user => vagrant
  # }
  # exec { 'hashtables':
  #   command => 'cabal install hashtables',
  #   require => Exec['cabal update'],
  #   user => vagrant
  # }
  # exec { 'conduit':
  #   command => 'cabal install conduit',
  #   require => Exec['cabal update'],
  #   user => vagrant
  # }
  # exec { 'data-binary-ieee754':
  #   command => 'cabal install data-binary-ieee754',
  #   require => Exec['cabal update'],
  #   user => vagrant
  # }
  # exec { 'json':
  #   command => 'cabal install json',
  #   require => Exec['cabal update'],
  #   user => vagrant
  # }
  # exec { 'monadlib':
  #   command => 'cabal install monadlib',
  #   require => Exec['cabal update'],
  #   user => vagrant
  # }
  # exec { 'enumerator':
  #   command => 'cabal install enumerator',
  #   require => Exec['cabal update'],
  #   user => vagrant
  # }
}
include packages
include cabal

exec { 'sudo apt-get update':
  command => "apt-get update"
}

Exec['sudo apt-get update'] -> Class['packages']
Class['packages'] -> Class['cabal']

file { '/etc/motd':
  content => "motd\n"
}
