class { '::sensu':
  rabbitmq_password => 'correct-horse-battery-staple',
  rabbitmq_host     => '192.168.100.180',
  rabbitmq_vhost    => '/sensu',
  subscriptions     => 'all',
  client_address    => $::ipaddress_eth1,
}