# == Class: migrate_puppet_master 
#
# Use this class to manage the server setting in puppet.conf.
# You can use this to point all your agents at a new master. 
#
# === Parameters
#
# none
#
# === Variables
#
# === Examples
#
#  class { migrate_puppet_master: }
#
# === Authors
#
# Author Name <nick.walker@puppetlabs.com>
#
# === Copyright
#
# Copyright 2013 Nick Walker, unless otherwise noted.
#
class migrate_puppet_master {

  ini_setting { "puppet_conf_agent_server_setting":
   path    => '/etc/puppetlabs/puppet/puppet.conf',
   section => 'agent',
   setting => 'server',
   value   => 'newmaster',
   ensure  => present,

}

}
