export SVDIR="${TERMUX__PREFIX:-"${PREFIX}"}/var/service"
export LOGDIR="${TERMUX__PREFIX:-"${PREFIX}"}/var/log"
(service-daemon start >/dev/null 2>&1 &)
