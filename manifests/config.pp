class nullmailer::config {
  file { '/etc/nullmailer/remotes':
    content => "$nullmailer::remoterelay smtp\n",
    require => Class['nullmailer::package'],
    notify  => Class['nullmailer::service'],
  }

  file { '/etc/nullmailer/adminaddr':
    content => "$nullmailer::adminaddr\n",
    require => Class['nullmailer::package'],
    notify  => Class['nullmailer::service'],
  }

}
