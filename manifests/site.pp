# http://www.puppetcookbook.com/posts/install-multiple-packages.html

$packages = [
  'bash',
  'bind-utils',
  'bzip2',
  'clang-devel',
  'cmake',
  'coreutils',
  'cpio',
  'createrepo',
  'curl',
  'dmidecode',
  'fping',
  'gawk',
  'gcc',
  'gcc-c++',
  'git',
  'glib2-devel',
  'golang',
  'golang-vet',
  'grep',
  'gzip',
  'iotop',
  'java-1.8.0-openjdk',
  'java-1.8.0-openjdk-devel',
  'ksh',
  'less',
  'lftp',
  'lsof',
  'make',
  'mlocate',
  'net-tools',
  'nmap',
  'ntp',
  'openssh',
  'openssl',
  'parted',
  'perl',
  'perltidy',
  'procps',
  'puppet',
  'PyYAML',
  'pychecker',
  'python',
  'python-argparse',
  'python-jinja2',
  'python-pip',
  'python-requests',
  'python-six',
  'redhat-lsb',
  'rpm-build',
  'rpmlint',
  'rsync',
  'ruby',
  'ruby-irb',
  'screen',
  'sed',
  'strace',
  'subversion',
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
