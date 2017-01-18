class start-server {
  file { 'start-server-script':
    ensure => 'file',
#     source => '/home/vagrant/mineserver.sh',
    path => '/home/vagrant/mineserver.sh',
#    notify => Exec['startminecraft'],
  }
}
# exec { 'startminecraft':
#   command => '/home/vagrant/mineserver.sh',
#   refreshonly => true,
# }
