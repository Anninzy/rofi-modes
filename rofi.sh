upower=$(upower -b)
get() {
  echo "$upower" | awk -F':[[:space:]]+' "/$1/ { print \$2 }"
}

battery_percent=$(get "percentage")
battery_icon=$(get "icon-name")
case $battery_icon in
"'battery-full-charging-symbolic'")
  battery_icon="󰂅"
  ;;
"'battery-good-charging-symbolic'")
  battery_icon="󰂉"
  ;;
"'battery-low-charging-symbolic'")
  battery_icon="󰂇"
  ;;
"'battery-caution-charging-symbolic'")
  battery_icon="󰢟"
  ;;
"'battery-full-symbolic'")
  battery_icon="󰁹" #no suffix
  ;;
"'battery-good-symbolic'")
  battery_icon="󰁿" #60
  ;;
"'battery-low-symbolic'")
  battery_icon="󰁼" #30
  ;;
"'battery-caution-symbolic'")
  battery_icon="󰂎" #outline
  ;;
esac

INFO=\""$battery_icon $battery_percent"\" rofi "$@"
