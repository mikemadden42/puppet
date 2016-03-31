# http://www.puppetcookbook.com/posts/install-multiple-packages.html

$packages = [
  'ant',
  'atop',
  'awscli',
  'bash',
  'build-essential',
  'bzip2',
  'clang-3.4',
  'clang-format-3.4',
  'cmake',
  'coreutils',
  'cpio',
  'curl',
  'dos2unix',
  'dmidecode',
  'dnsutils',
  'fping',
  'gawk',
  'git',
  'golang',
  'grep',
  'gzip',
  'hwloc',
  'htop',
  'iftop',
  'iotop',
  'ipython',
  'ksh',
  'less',
  'lftp',
  'libkeyutils-dev',
  'libperl-critic-perl',
  'lsof',
  'make',
  'mlocate',
  'net-tools',
  'nmap',
  'ntp',
  'openjdk-7-jdk',
  'openssh-client',
  'openssh-server',
  'openssl',
  'p7zip-full',
  'parted',
  'pbzip2',
  'perl',
  'perltidy',
  'pigz',
  'procps',
  'puppet',
  'puppet-lint',
  'pxz',
  'pychecker',
  'pylint',
  'python',
  'python-boto',
  'python-jinja2',
  'python-pip',
  'python-psutil',
  'python-requests',
  'python-six',
  'python-yaml',
  'python3-jinja2',
  'python3-psutil',
  'python3-requests',
  'python3-six',
  'python3-yaml',
  'rsync',
  'ruby',
  'screen',
  'sed',
  'strace',
  'subversion',
  'sudo',
  'tar',
  'tcpdump',
  'tmux',
  'vim-nox',
  'vim-puppet',
  'wget',
  'xz-utils',
  'zsh'
]

package { $packages:
  ensure => 'installed',
  #noop   => true
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
  #noop   => true
}
