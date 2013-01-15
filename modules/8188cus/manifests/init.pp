class 8188cus {
  package { 'wpasupplicant':
    ensure => installed
  }

  file { '/etc/network/interfaces.dist':
    source => 'puppet:///modules/8818cus/interfaces'
  }

  file { '/etc/wpa_supplicant/wpa_supplicant.conf.tmpl':
    source => 'puppet:///modules/8818cus/wpa_supplicant.conf.tmpl'
}
