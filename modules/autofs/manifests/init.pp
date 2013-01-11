class autofs {

	package { "autofs":
    		ensure => "latest"
	}

	service { "rpcbind":
		ensure => "running",
		enable => true
	}

	service { "autofs":
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
    }
}
