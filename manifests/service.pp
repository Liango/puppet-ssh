class ssh::service (
  String $package_name = $::ssh::package_name,
  String $service_name = $::ssh::service_name,
){
  service { 'ssh-service':
    ensure     => running,
    name       => $service_name,
    enable     => true,
    require     => Package[$package_name],
    hasstatus   => true,
    hasrestart => true,
  }
}
