class haskell
{
  package { 'haskell-platform':
    ensure => installed
  }
  
  package { 'haskell-platform-prof':
    ensure => installed
  }
}
