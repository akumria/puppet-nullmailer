class nullmailer (
  $package = $nullmailer::params::package,
  $absentpackages = $nullmailer::params::absentpackages,
  $service = $nullmailer::params::service,
  $adminaddr = "root@$::domain",
  $remoterelay = "smtp.$::domain",

) inherits nullmailer::params {

  anchor {'nullmailer::start':}->
  class {'nullmailer::package':}~>
  class {'nullmailer::config':}~>
  class {'nullmailer::service':}~>
  anchor {'nullmailer::end':}

}
