# Installs latest raspcontrol from github
class rapscontrol {
  excc { 'git checkout':
    command => 'cd /opt && git clone https://github.com/Bioshox/Raspcontrol.git',
    path => '/bin:/usr/bin',
    require => Package['php5-cli','git']
  }

  file { '/etc/init.d/raspcontol':
    source => 'puppet:///modules/raspcontrol/raspcontrol'
  }

  service { 'raspcontrol':
    ensure => running,
    enabled => true
  }
}
