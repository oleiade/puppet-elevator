class elevator::service {
    service { $elevator::params::service_name:
        ensure      => running,
        enable      => true,
        hasrestart  => true,
        require     => Class["elevator::install"],
    }
}