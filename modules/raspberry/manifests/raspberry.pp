class raspberry {
	include "ntp"

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

