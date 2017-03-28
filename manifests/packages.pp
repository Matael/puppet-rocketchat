# Packages that are neccesary for Rocket.Chat installation and configuration
class rocket::packages {

  class { 'nodejs':
    version    => '4.x',
    build_deps => $::rocket::nodejs_deps,
    before     => Exec['npm install']
  }

  package { 'curl':
    ensure => installed,
  }

  package { 'graphicsmagick':
    ensure => installed,
  }

  package { 'build-essential':
    ensure => installed,
  }
}
