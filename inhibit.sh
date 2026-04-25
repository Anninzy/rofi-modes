inhibit_suspend='systemd-inhibit --what=sleep sleep infinity'
inhibit_idle='systemd-inhibit --what=idle sleep infinity'

pid_suspend="$(pgrep -f "$inhibit_suspend")"
pid_idle="$(pgrep -f "$inhibit_idle")"

status_suspend_lock='󰒲 '
status_idle_lock='󰍹 '
status_suspend_unlock='󰒲 '
status_idle_unlock='󰍹 '

echo -e '\0no-custom\x1ftrue'

case "$1" in
"$status_suspend_lock")
  kill "$pid_suspend"
  unset pid_suspend
  ;;
"$status_idle_lock")
  kill "$pid_idle"
  unset pid_idle
  ;;
"$status_suspend_unlock")
  coproc $inhibit_suspend
  pid_suspend=$COPROC_PID
  ;;
"$status_idle_unlock")
  coproc $inhibit_idle
  pid_idle=$COPROC_PID
  ;;
esac

if [ "$pid_suspend" ]; then
  echo "$status_suspend_lock"
else
  echo "$status_suspend_unlock"
fi

if [ "$pid_idle" ]; then
  echo "$status_idle_lock"
else
  echo "$status_idle_unlock"
fi
