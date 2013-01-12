node default {
  include ntp
}

node raspberry-base inherits default {
  include 'java'

  $basepackages = ['git','htop','rsync','php5-cli']
  package { $basepackages:
                ensure => latest
  }

  include 'raspcontrol'
  include 'autofs'
}


node raspi1 inherits raspberry-base {
}

node raspi2 inherits raspberry-base {
}

