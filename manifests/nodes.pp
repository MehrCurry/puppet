node default {
   include ntp
}

node raspberry-base inherits default {
	include 'java'

        package { "git":
                ensure => "latest"
        }

        package { "htop":
                ensure => "latest"
        }

        package { "rsync":
                ensure => "latest"
        }

        package { "php5-cli":
                ensure => "latest"
        }
}

node raspi1 inherits raspberry-base {
	include autofs
}
