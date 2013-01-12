# Install autofs and maps for NAS access
class autofs {
  package { 'autofs':
    ensure => latest
  }

  service { 'rpcbind':
    ensure => running,
    enable => true
  }

  service { 'autofs':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
  }

  file { '/etc/auto.master':
    ensure => present,
    source => 'puppet:///modules/autofs/auto.master',
    owner => root,                                                                                                                
    group => root,
    mode => 644,                                                                                                                
    notify => Service[autofs]    
  }

  file { '/etc/auto.nas':
    ensure => present,
    source => 'puppet:///modules/autofs/auto.nas',
    owner => root,                                      
    group => root,                                    
    mode => 644,
    notify => Service[autofs]
  }
}
