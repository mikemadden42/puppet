# http://www.puppetcookbook.com/posts/install-multiple-packages.html

$packages = [
  'devtoolset-6-perftools',
  'devtoolset-6-toolchain',
  'devtoolset-6-libasan-devel'
]

package { $packages:
  ensure => 'present',
}
