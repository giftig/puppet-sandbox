class access {
  group { 'ctmadmins':
    ensure =>  present,
  }
  user { 'rob':
    ensure  => present,
    gid     => 'ctmadmins',
    home    => '/home/rob',
  }
  file { '/home/rob':
    ensure  => directory,
    mode    => '0700',
    require => User['rob'],
  }
  file { '/home/rob/.ssh':
    ensure => directory,
    mode   => '0700',
  }
  file { '/home/rob/.ssh/authorized_keys':
    ensure => file,
    mode   => '0600',
    source => 'puppet:///modules/access/rob-keys',
  }
}
