class { '::sensu':
  rabbitmq_password => 'correct-horse-battery-staple',
  rabbitmq_host     => 'sensu-server',
  rabbitmq_vhost    => '/sensu',
  subscriptions     => 'all',
  client_address    => $::ipaddress_eth1,
}
