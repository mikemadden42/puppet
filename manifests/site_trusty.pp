# http://www.puppetcookbook.com/posts/install-multiple-packages.html

$packages = [
  'awscli',
  'bash',
  'build-essential',
  'bzip2',
  'cmake',
  'coreutils',
  'cpio',
  'curl',
  'dmidecode',
  'dnsutils',
  'fping',
  'gawk',
  'git',
  'golang',
  'grep',
  'gzip',
  'iotop',
  'ksh',
  'less',
  'lftp',
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
  'python3-jinja2',
  'python3-psutil',
  'python3-requests',
  'python3-six',
  'rsync',
  'ruby',
  'screen',
  'sed',
  'strace',
  'subversion',
  'sudo',
  'tar',
  'tcpdump',
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
