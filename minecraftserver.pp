include directories
include minecraft
include start-server

package { 'default-jre':
  ensure => 'installed',
}

file { '/home/vagrant/minecraft/minecraft_server.1.11.2.jar':
    ensure => 'present',
    source => '/tmp/minecraft_server.1.11.2.jar',
    require => Exec['getminecraft'],
}

file { '/home/vagrant/minecraft/eula.txt':
  ensure => 'present',
  content => 'eula=true',
}

exec { 'startminecraft':
  command => "/usr/bin/bash -c '/home/vagrant/mineserver.sh'",
  refreshonly => true,
}
# exec { 'start-server':
#   command => "/bin/bash -c '/home/vagrant/minecraftstart.sh'",
# }
