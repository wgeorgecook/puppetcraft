class start-server {
  file { '/home/vagrant/puppetcraft/deployment/puppet/modules/start-server/shell/mineserver.sh':
    ensure => 'present',
    content => 'java -Xmx1024M -Xms1024M -jar minecraft_server.1.12.2.jar nogui',
  }
}

