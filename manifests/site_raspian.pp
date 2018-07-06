# http://www.puppetcookbook.com/posts/install-multiple-packages.html

$packages = [
  'ant',
  'atop',
  'awscli',
  'bash',
  'build-essential',
  'bzip2',
  'clang',
  'clang-format',
  'cmake',
  'coreutils',
  'cpio',
  'curl',
  'cython',
  'dmidecode',
  'dnsutils',
  'dos2unix',
  'enscript',
  'ethtool',
  'fping',
  'gawk',
  'git',
  'golang',
  'grep',
  'gzip',
  'htop',
  'hwloc',
  'iftop',
  'iotop',
  'ipython',
  'ksh',
  'less',
  'lftp',
  'libboost-all-dev',
  'libkeyutils-dev',
  'libperl-critic-perl',
  'lsof',
  'make',
  'mlocate',
  'mutt',
  'net-tools',
  'ninja-build',
  'nmap',
  'ntp',
  'openssh-client',
  'openssh-server',
  'openssl',
  'oracle-java8-jdk',
  'p7zip-full',
  'parted',
  'pbzip2',
  'pep8',
  'perl',
  'perltidy',
  'pigz',
  'procps',
  'puppet',
  'puppet-lint',
  'pxz',
  'pychecker',
  'pyflakes',
  'pylint',
  'python',
  'python-boto',
  'python-jinja2',
  'python-nose',
  'python-pip',
  'python-psutil',
  'python-requests',
  'python-six',
  'python-virtualenv',
  'python-yaml',
  'python3-jinja2',
  'python3-psutil',
  'python3-requests',
  'python3-six',
  'python3-yaml',
  'rsync',
  'ruby',
  's3cmd',
  'screen',
  'sed',
  'silversearcher-ag',
  'strace',
  'subversion',
  'sudo',
  'tar',
  'tcpdump',
  'tmux',
  'vim-nox',
  'w3m',
  'wget',
  'xtrlock',
  'xz-utils',
  'zsh'
]

package { $packages:
  ensure => 'present',
}

$services = [
  'cron',
  'ntp',
  'rsyslog',
  'ssh',
]

service { $services:
  ensure => 'running',
  enable => true,
}
