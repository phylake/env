class bash
{
  file { '/home/vagrant/.gitconfig':
    source => "puppet:///modules/bash/.gitconfig",
    owner => vagrant,
    group => vagrant,
    mode => 0644
  }

  file { '/home/vagrant/.bash_profile':
    source => "puppet:///modules/bash/.bash_profile",
    owner => vagrant,
    group => vagrant,
    mode => 0644
  }

  file { '/home/vagrant/cabal_install':
    source => "puppet:///modules/bash/cabal_install",
    owner => vagrant,
    group => vagrant,
    mode => 0755
  }
}
