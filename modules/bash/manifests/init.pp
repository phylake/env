class bash
{
  file { '/home/vagrant/.gitconfig':
    source => "puppet:///modules/bash/.gitconfig"
  }

  file { '/home/vagrant/.bash_profile_puppet':
    source => "puppet:///modules/bash/.bash_profile_puppet"
  }
}
