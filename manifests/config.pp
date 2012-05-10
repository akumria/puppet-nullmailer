class nullmailer::config {
  file { '/etc/nullmailer/remotes':
    content => "$nullmailer::remoterelay smtp",
    require => Class['nullmailer::package'],
    notify  => Class['nullmailer::service'],
  }

  file { '/etc/nullmailer/adminaddr':
    content => "$nullmailer::adminaddr",
    require => Class['nullmailer::package'],
    notify  => Class['nullmailer::service'],
  }

}
