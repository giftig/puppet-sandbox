class potato {
  file { '/etc/potato.conf':
    ensure  => file,
    owner   => root,
    mode    => '0644',
    content => 'Hello, potatoes of the world.',
  }

  package { 'httpd':
    ensure => installed,
  }
}

node /^data\.potato\.[0-9]+$/ {
  include potato
}

node default {
  include potato
}
