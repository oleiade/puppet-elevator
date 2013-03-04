class elevator::params {
    $port = "$elevator::port"
    $bind = "$elevator::bind"
    $db_storage_path = "$elevator::db_storage_path"
    $log_dir = "$elevator::log_dir"
    $majordome_interval = "$elevator::majordome_interval"

    $db_store_file = "${db_storage_path}/store.json"

    $activity_log_file = "${log_dir}/elevator.log"
    $errors_log_file = "${log_dir}/elevator_errors.log"

    $config_dir = "/etc/elevator"
    $config_default_file = "${config_dir}/elevator.conf"

    $init_script = "/etc/init.d/elevator-server"
    $service_name = "elevator"
}