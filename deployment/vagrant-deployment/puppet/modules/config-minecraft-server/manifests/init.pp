class config-minecraft-server {
    file { '/home/vagrant/eula.txt':
        owner => "vagrant",
        group => "vagrant",
        ensure => 'present',
        content => 'eula=true',
    }

    file { '/home/vagrant/server.properties':
        ensure => 'present',
        source => '/home/vagrant/puppetcraft/deployment/misc/server.properties'
    }
}