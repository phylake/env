class perf
{
  # perf (the binary)
  package { 'linux-tools':
    ensure => installed
  }

  # ulimits
  file { '/etc/security/limits.conf':
    source => "puppet:///modules/perf/limits.conf",
    owner => root,
    group => root,
    mode => 0644
  }
}
