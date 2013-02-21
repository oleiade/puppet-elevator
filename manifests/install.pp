class elevator::install {
    /*
    ** Elevator essentially relies on leveldb
    ** and zmq libraries.
    */
    package { "libzmq3": ensure => "installed" }
    package { "libzmq3-dev": ensure => "installed" }

    package {"Elevator":
        ensure      => present,
        provider    => pip,
    }
}