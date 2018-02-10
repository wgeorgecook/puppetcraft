class config-minecraft-server {
    file { '/home/minecraft-user/minecraft/eula.txt':
        owner => "minecraft-user",
        group => "minecraft-user",
        ensure => 'present',
        content => 'eula=true',
    }

    file { '/home/minecraft-user/minecraft/server.properties':
        ensure => 'present',
        source => '/home/minecraft-user/puppetcraft/deployment/misc/server.properties'
    }
}