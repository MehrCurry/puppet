# Install jdk and some base packages
class java {
  package { 'openjdk-7-jdk':
    ensure => installed
  }
}

