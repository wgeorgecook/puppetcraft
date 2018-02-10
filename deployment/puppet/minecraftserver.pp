include directories
include get-minecraft
include config-minecraft-server
include start-server

package { 'openjdk-8-jre':
  ensure => 'installed',
}

file { '/home/minecraft-user/minecraft/minecraft_server.1.12.2.jar':
    ensure => 'present',
    source => '/tmp/minecraft_server.1.12.2.jar',
    require => Exec['getminecraft'],
}


exec { 'start-server':
  user => "root",
  environment => ["JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java"],
  command => "/home/minecraft-user/puppetcraft/deployment/puppet/modules/start-server/shell/mineserver.sh",
 }
