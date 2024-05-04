# creates a manifest file that kills a process named killmenow
# uses the exec puppet resource
# uses the pkill system utility

exec {'killmenow':
  command => 'pkill -f killmenow',
  onlyif  => 'pgrep -f killmenow',
  path    => '/usr/bin:/bin',
}
