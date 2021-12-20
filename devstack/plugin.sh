# check for service enabled
if [[ "$1" == "source" ]]; then
    # Initial source of lib script
    source $(dirname "$0")/lib/ceph
elif [[ "$1" == "stack" && "$2" == "pre-install" ]]; then
    # Set up system services
    echo_summary "Configuring system services ceph"
    pre_install_ceph

elif [[ "$1" == "stack" && "$2" == "install" ]]; then
    # Perform installation of service source
    echo_summary "Installing ceph"
    install_ceph

elif [[ "$1" == "stack" && "$2" == "post-config" ]]; then
    # Configure after the other layer 1 and 2 services have been configured
    echo_summary "Configuring ceph"
    configure_ceph

elif [[ "$1" == "stack" && "$2" == "extra" ]]; then
    # Initialize and start the ceph service
    echo_summary "Initializing ceph"
    init_ceph
fi

if [[ "$1" == "unstack" ]]; then
    # Shut down ceph services
    # no-op
    shutdown_ceph
fi

if [[ "$1" == "clean" ]]; then
    # Remove state and transient data
    # Remember clean.sh first calls unstack.sh
    # no-op
    cleanup_ceph
fi
