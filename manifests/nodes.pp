node default {
  include ntp
}

node raspberry-base inherits default {
  include 'java'

  $basepackages = ['git','htop','rsync','php5-cli']
  package { $basepackages:
                ensure => latest
  }
}


node raspi1 inherits raspberry-base {
  include autofs
}

node raspi2 inherits raspberry-base {
  include autofs
}

