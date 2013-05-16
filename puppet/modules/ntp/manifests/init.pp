class ntp {
  package { "ntp":
    name => $operationsystem ? {
      RedHat,CentOS,Fedora => "ntp",
      default              => "ntp"
    }
  }

  service { "ntpd":
    ensure => running,
    enable => true
  }
}
