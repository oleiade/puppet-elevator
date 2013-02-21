class elevator::install {
    /*
    ** Elevator essentially relies on leveldb
    ** and zmq libraries.
    */
    package { "libzmq3": ensure => "installed" }
    package { "libleveldb1": ensure => "installed" }
    package { "libzmq3-dev": ensure => "installed", require => Package["libzmq3"] }
    package { "libleveldb-dev": ensure => "installed", require => Package["libleveldb1"]}

    package {"Elevator":
        ensure      => present,
        provider    => pip,
    }
}