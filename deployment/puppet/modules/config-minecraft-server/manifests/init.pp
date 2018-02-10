class config-minecraft-server {
    file { '~/eula.txt':
        owner => "minecraft",
        group => "minecraft",
        ensure => 'present',
        content => 'eula=true',
    }

    file { '~/server.properties':
        ensure => 'present',
        source => '~/puppetcraft/deployment/misc/server.properties'
    }
}