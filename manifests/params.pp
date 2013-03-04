class elevator::params(
    $daemonize = "no",
    $port = "4141",
    $bind = "127.0.0.1",
    $db_storage_path = "/var/lib/elevator",
    $log_dir = "/var/log/elevator",
    $majordome_interval = "15"
) {
    $db_store_file = "${db_storage_path}/store.json"

    $activity_log_file = "${log_dir}/elevator.log"
    $errors_log_file = "${log_dir}/elevator_errors.log"

    $config_dir = "/etc/elevator"
    $config_default_file = "${config_dir}/elevator.conf"

    $init_script = "/etc/init.d/elevator-server"
    $service_name = "elevator"
}