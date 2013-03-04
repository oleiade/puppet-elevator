class elevator(
    $port = "4141",
    $bind = "127.0.0.1",
    $db_storage_path = "/var/lib/elevator",
    $log_dir = "/var/log/elevator",
    $majordome_interval = "2"
) {
    include elevator::params
    include elevator::config
    include elevator::install
    include elevator::service
}
