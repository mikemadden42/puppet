# http://www.puppetcookbook.com/posts/install-multiple-packages.html

$packages = [
  'bash',
  'bzip2',
  'cmake',
  'coreutils',
  'cpio',
  'curl',
  'dmidecode',
  'gawk',
  'gcc',
  'gcc-c++',
  'git',
  'gzip',
  'grep',
  'iotop',
  'ksh',
  'less',
  'lftp',
  'lsof',
  'make',
  'mlocate',
  'nmap',
  'ntp',
  'java-1.7.0-openjdk',
  'java-1.7.0-openjdk-devel',
  'net-tools',
  'openssh',
  'openssl',
  'parted',
  'perl',
  'perltidy',
  'puppet',
  'procps',
  'python',
  'redhat-lsb',
  'rpmlint',
  'rpm-build',
  'ruby',
  'ruby-irb',
  'rsync',
  'screen',
  'sed',
  'strace',
  'sudo',
  'tar',
  'tcpdump',
  'vim-enhanced',
  'wget',
  'xz'
]

package { $packages:
  ensure => 'installed',
  #noop   => true
}

$services = [
  'crond',
  'ntpd',
  'rsyslog',
  'sshd'
]

service { $services:
  ensure => 'running',
  enable => true,
  #noop   => true
}

user { 'madden':
  ensure     => 'present',
  comment    => 'Michael Madden',
  managehome => true,
  #noop       => true,
  shell      => '/bin/bash'
}

exec { "yum_upgrade":
  command => "/usr/bin/yum upgrade -y"
}
