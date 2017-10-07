# http://www.puppetcookbook.com/posts/install-multiple-packages.html

$packages = [
  'PyYAML',
  'bash',
  'bc',
  'bind-utils',
  'boost-devel',
  'bzip2',
  'centos-release-scl',
  'clang-devel',
  'cmake',
  'coreutils',
  'cpio',
  'createrepo',
  'curl',
  'deltarpm',
  'dmidecode',
  'enscript',
  'ethtool',
  'fping',
  'gawk',
  'gcc',
  'gcc-c++',
  'git',
  'glib2-devel',
  'golang',
  'grep',
  'gzip',
  'htop',
  'iotop',
  'iperf3',
  'java-1.8.0-openjdk',
  'java-1.8.0-openjdk-devel',
  'ksh',
  'less',
  'lftp',
  'lsof',
  'make',
  'mlocate',
  'net-tools',
  'ninja-build',
  'nmap',
  'ntp',
  'openssh',
  'openssl',
  'parted',
  'perl',
  'perltidy',
  'procps-ng',
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
  'tmux',
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
