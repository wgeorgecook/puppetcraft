class start-server {
  file { '/home/vagrant/puppetcraft/deployment/puppet/modules/start-server/shell/mineserver.sh':
    ensure => 'present',
    content => 'java -Xmx256M -Xms256M -jar minecraft_server.1.11.2.jar'
    # path => '/home/vagrant/puppetcraft/deployment/puppet/modules/start-server/shell/mineserver.sh',

  }
}

