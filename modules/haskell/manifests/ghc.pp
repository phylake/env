class ghc
{
  # validate documentation
  # xmllint
  package { 'libxml2-utils':
    ensure => installed
  }
  
  # generate HTML docs
  # xsltproc
  package { 'xsltproc':
    ensure => installed
  }

  # generate PDF and PS docs
  # dblatex
  package { 'dblatex':
    ensure => installed
  }
}
