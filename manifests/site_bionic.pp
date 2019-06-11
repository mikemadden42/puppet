# http://www.puppetcookbook.com/posts/install-multiple-packages.html

$packages = [
  'ant',
  'atop',
  'awscli',
  'bash',
  'bc',
  'build-essential',
  'bzip2',
  'clang',
  'clang-format',
  'cmake',
  'coreutils',
  'cpio',
  'curl',
  'cython',
  'devscripts',
  'dmidecode',
  'dnsutils',
  'dos2unix',
  'enscript',
  'ethtool',
  'flake8',
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
  'iperf3',
  'ipython',
  'ksh',
  'less',
  'lftp',
  'libboost-all-dev',
  'libcurl4-openssl-dev',
  'libibverbs-dev',
  'libimage-exiftool-perl',
  'libkeyutils-dev',
  'libldap2-dev',
  'libmysqlclient-dev',
  'libncurses5-dev',
  'libnuma-dev',
  'libpam0g-dev',
  'libpcre3-dev',
  'libperl-critic-perl',
  'libperl-dev',
  'libpopt-dev',
  'librdmacm-dev',
  'librpm-dev',
  'libsnmp-dev',
  'libssl-dev',
  'libxml2-dev',
  'lsof',
  'make',
  'mlocate',
  'net-tools',
  'ninja-build',
  'nmap',
  'ntp',
  'openjdk-11-jdk',
  'openssh-client',
  'openssh-server',
  'openssl',
  'p7zip-full',
  'parted',
  'pbzip2',
  'pep8',
  'perl',
  'perltidy',
  'pigz',
  'procps',
  'pxz',
  'pychecker',
  'pydocstyle',
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
  'rtorrent',
  'ruby',
  'ruby-dev',
  's3cmd',
  'screen',
  'sed',
  'silversearcher-ag',
  'snmp',
  'strace',
  'subversion',
  'sudo',
  'tar',
  'tcpdump',
  'tmux',
  'vim-nox',
  'wget',
  'xutils-dev',
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
