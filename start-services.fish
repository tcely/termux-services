if status --is-login
    # For more details, see set(1)
    set -gx SVDIR "${TERMUX__PREFIX}/var/service"
    set -gx LOGDIR "${TERMUX__PREFIX}/var/log"
    service-daemon start >/dev/null 2>&1 &
end
