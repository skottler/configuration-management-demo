class ntp {
  package { "ntp":
    name => $osfamily? {
      RedHat  => "ntp",
      default => "ntp"
    }
  }

  service { "ntpd":
    ensure => running,
    enable => true
  }
}
