class site::default {
  include access
  include basictools
}

class site::webserver {
  include site::default
  include httpd
}

node /^data\.webserver\.[0-9]+/ {
  include site::webserver
}

node default {
  include site::default
}
