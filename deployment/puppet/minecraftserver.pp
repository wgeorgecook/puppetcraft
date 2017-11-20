include directories
include get-minecraft
include config-minecraft-server
include start-server

package { 'default-jre':
  ensure => 'installed',
}

file { '/home/vagrant/minecraft/minecraft_server.1.11.2.jar':
    ensure => 'present',
    source => '/tmp/minecraft_server.1.11.2.jar',
    require => Exec['getminecraft'],
}


exec { 'start-server':
  command => "/bin/bash -c 'cd /home/vagrant/minecraft/; /home/vagrant/puppetcraft/deployment/puppet/modules/start-server/shell/mineserver.sh'",
 }
