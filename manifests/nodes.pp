node default {
  include ntp
}

node raspberry-base inherits default {
  include 'java'
  include '8818cus'

  $basepackages = ['git','htop','rsync','php5-cli','mercurial','subversion','bluez']
  package { $basepackages:
                ensure => latest
  }

  include 'raspcontrol'
  include 'autofs'
}


node raspi1 inherits raspberry-base {
  package { 'librxtx-java':
    ensure => installed
  }
}

node raspi2 inherits raspberry-base {
}

