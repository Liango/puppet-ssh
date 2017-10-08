class ssh::install (
  String $package_name = $::ssh::package_name,
  String $service_name = $::ssh::service_name,
){
  package { 'openssh-server':
    name   => $package_name,
    ensure => present,
    before => Service[$service_name],
  }
}
