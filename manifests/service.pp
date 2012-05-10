class nullmailer::service {
  service { $nullmailer::service:
    ensure => running,
    enable => true,
    hasstatus => false,
    hasrestart => true,
  }
}
