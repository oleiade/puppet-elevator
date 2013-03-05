class elevator::install {
    apt::source {"oleiade_repo":
        location    => "http://deb.oleiade.com/debian/",
        release     => "oneiric",
        repos       => "main",
        key         => "92EDE36B",
        key_server  => "keyserver.ubuntu.com",
        include_src => false,
    } ->
    package { "libzmq3": ensure => "installed" } ->
    package { "libzmq3-dev": ensure => "installed", require => Package["libzmq3"] } ->
    package { "libleveldb1": ensure => "installed" } ->
    package { "libleveldb-dev": ensure => "installed", require => Package["libleveldb1"]}

    package {"Elevator":
        ensure      => present,
        provider    => pip,
    }
}
