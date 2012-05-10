class nullmailer::params {
  case $::operatingsystem {
    /(Ubuntu|Debian)/: {
      $package = ['nullmailer', ]
      $absentpackages = ['exim4-daemon-light', 'exim4-daemon-heavy', 
                         'postfix', 'sendmail-bin', 'citadel-mta', 
                         'courier-mta', 'lsb-invalid-mta',]
      $service = 'nullmailer'
    }
    default: {
      fail("Unsupported platform: ${::operatingsystem}")
    }
  }
}
