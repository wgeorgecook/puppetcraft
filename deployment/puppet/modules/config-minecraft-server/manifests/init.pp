class config-minecraft-server {
    file { '/home/vagrant/minecraft/eula.txt':
        ensure => 'present',
        content => 'eula=true',
    }

    file { '/home/vagrant/minecraft/server.properties':
        ensure => 'present',
        source => '/home/vagrant/puppetcraft/deployment/misc/server.properties'
    }
}