include directories
include get-minecraft
include config-minecraft-server


package { 'openjdk-8-jre':
  ensure => 'installed',
}

file { '/home/minecraft-user/minecraft/minecraft_server.1.12.2.jar':
    ensure => 'present',
    source => '/tmp/minecraft_server.1.12.2.jar',
    require => Exec['getminecraft'],
}