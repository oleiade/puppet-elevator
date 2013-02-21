class elevator::config {
    user {"elevator":
        ensure  => present,
        home    => "/dev/null",
        shell   => "/sbin/nologin",
    }

    file { $elevator::params::config_dir:
        ensure  => directory,
        owner   => elevator,
        group   => elevator,
        require => Class["elevator::install"],
    }

    file { $elevator::params::config_default_file:
        ensure  => present,
        owner   => elevator,
        group   => elevator,
        source  => 'puppet:///modules/elevator/etc/elevator/elevator.conf',
        require => [File[$elevator::params::config_dir], Class["elevator::install"]],
    }

    file { $elevator::params::data_dir:
        ensure  => directory,
        owner   => elevator,
        group   => elevator,
        require => Class["elevator::install"],
    }

    file { $elevator::params::log_dir:
        ensure  => directory,
        owner   => elevator,
        group   => elevator,
        require => Class["elevator::install"],
    }
}