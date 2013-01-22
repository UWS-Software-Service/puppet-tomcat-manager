class tomcat-manager inherits tomcat {
  file { "${home}/shared/template/webapps/manager":
    ensure => "directory",
    recurse => true,
    purge => true,
    backup => false,
    mode => "755",
    owner   => $user,
    source => "puppet:///modules/tomcat-manager/manager",
    require => Class["tomcat::package"]
  }
}
