Exec { path => ['/usr/bin'] }

# @exec {'sudo apt-get update':
#   tag => update
# }
# Exec <| tag == update |> -> Package <| |>

exec {'sudo apt-get update':}
Exec['sudo apt-get update'] -> Package <| |>

# @exec {'curl':
#   tag => echo
# }
# Package <| |> -> Exec <| tag == echo |>

class packages {
  package { 'git':
    ensure => installed
  }
  package { 'unzip':
    ensure => installed
  }
  package { 'vim':
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
}

include packages
include haskell
include bash

file { '/etc/motd':
  content => "motd\n"
}
