# http://www.puppetcookbook.com/posts/install-multiple-packages.html

$packages = [
  'ant',
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
  'glib2-devel',
  'gzip',
  'grep',
  'iotop',
  'ksh',
  'less',
  'lftp',
  'lsof',
  'lua',
  'make',
  'mlocate',
  'nmap',
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
