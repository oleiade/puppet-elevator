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
        content => template("${module_name}/elevator.erb"),
        require => [File[$elevator::params::config_dir], Class["elevator::install"]],
    }

    file { $elevator::db_storage_path:
        ensure  => directory,
        owner   => elevator,
        group   => elevator,
        require => Class["elevator::install"],
    }

    file { $elevator::log_dir:
        ensure  => directory,
        owner   => elevator,
        group   => elevator,
        require => Class["elevator::install"],
    }

    file { $elevator::params::init_script:
        ensure  => present,
        owner   => root,
        group   => root,
        mode    => 0755,
        content => template("${module_name}/elevator-server.erb"),
        require => Class["elevator::install"],
    }
}