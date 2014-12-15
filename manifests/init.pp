#
# Class: cron
#

class cron (
    $cron_allow_users    = $cron::params::cron_allow_users,
    $cron_allow_template = $cron::params::cron_allow_template,
) inherits cron::params {

    file { 'cron.allow':
        path    => '/etc/cron.allow',
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        content => template($cron_allow_template),
    }

}

