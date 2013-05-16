class ntp {
  package { "ntp":
    name => $operatingsystem ? {
      RedHat,CentOS,Fedora => "ntp",
      default              => "ntp"
    }
  }

  service { "ntpd":
    ensure => running,
    enable => true
  }
}
