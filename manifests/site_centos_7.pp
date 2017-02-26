# http://www.puppetcookbook.com/posts/install-multiple-packages.html

$packages = [
  'PyYAML',
  'bash',
  'bind-utils',
  'boost-devel',
  'bzip2',
  'clang-devel',
  'cmake',
  'coreutils',
  'cpio',
  'createrepo',
  'curl',
  'deltarpm',
  'dmidecode',
  'enscript',
  'fping',
  'gawk',
  'gcc',
  'gcc-c++',
  'git',
  'glib2-devel',
  'golang',
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
  'procps-ng',
  'puppet',
  'pychecker',
  'python',
  'python-jinja2',
  'python2-pip',
  'python-psutil',
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
  'zsh'
]

package { $packages:
  ensure => 'present',
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
}

user { 'madden':
  ensure     => 'present',
  comment    => 'Michael Madden',
  managehome => true,
  shell      => '/bin/bash'
}

exec { 'yum_upgrade':
  command => '/usr/bin/yum upgrade -y'
}
