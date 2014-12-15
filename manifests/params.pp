#
# cron params
#

class cron::params {

    $cron_allow_users       = [ ]
    $cron_allow_template    = 'cron/cron.allow.erb'

}
