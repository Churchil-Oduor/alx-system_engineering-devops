# This manifest file creates a file /tmp/school
# with the permission 0744
# file owner www-data
# group www-data
# contents of the file are -> I love Puppet

file { '/tmp/school':
  ensure  => file,
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet\n',
}
