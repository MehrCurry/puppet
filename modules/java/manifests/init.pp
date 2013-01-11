package { 'openjdk-7-jdk':
	ensure => 'installed'
}

package { 'maven':
	ensure => 'installed',
	require => 'openjdk-7-jdk'
}

