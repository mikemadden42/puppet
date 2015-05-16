# http://www.puppetcookbook.com/posts/install-multiple-packages.html

$packages = [
  'bash',
  'bzip2',
  'clang-devel',
  'cmake',
  'coreutils',
  'cpio',
  'createrepo',
  'curl',
  'dmidecode',
  'gawk',
  'gcc',
  'gcc-c++',
  'git',
  'glib2-devel',
  'golang',
  'golang-vet',
  'golang-vim',
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
  'java-1.8.0-openjdk',
  'java-1.8.0-openjdk-devel',
  'net-tools',
  'openssh',
  'openssl',
  'parted',
  'perl',
  'perltidy',
  'puppet',
  'procps',
  'python',
  'python-pip',
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
  'xz',
  'yum-cron',
  'yum-presto',
  'zsh'
]

package { $packages:
  ensure => 'installed',
  #noop   => true
}

$services = [
  'crond',
  'ntpd',
  'rsyslog',
  'sshd',
  'yum-cron'
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

exec { 'yum_upgrade':
  command => '/usr/bin/yum upgrade -y'
}
