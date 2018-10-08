class basictools {
  package { 'epel-release':
    ensure => installed,
  }
  package { 'python-pip':
    ensure  => installed,
    require => Package['epel-release'],
  }

  package { 'vim':
    ensure => installed,
  }

  package { 'jinja2-cli':
    provider => pip,
    ensure   => latest,
    require => Package['python-pip'],
  }
}
