class elevator::service {
    service { $elevator::params::service_name:
        ensure      => running,
        hasrestart  => true,
        require     => Class["elevator::install"],
    }
}