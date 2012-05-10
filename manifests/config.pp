class nullmailer::config {

  if $nullmailer::manage_etc_mailname == true {

    file {'nullmailer /etc/mailname for $fqdn':
      ensure  => present,
      name    => '/etc/mailname',
      content => "$::fqdn\n",
    }

  }

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
