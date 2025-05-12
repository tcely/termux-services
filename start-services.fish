if status is-login
    function default
        for value in $argv
            if test -z "$value"
                continue
            end
            echo $value
            return 0
        end
        return 1
    end

    set -l prefix "$(default "$TERMUX__PREFIX" "$PREFIX")"

    # For more details, see set(1)
    set -gx SVDIR "$prefix"/var/service
    set -gx LOGDIR "$prefix"/var/log
    service-daemon start >/dev/null 2>&1 &
end
