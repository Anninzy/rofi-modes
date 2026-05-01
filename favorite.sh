echo -e "\0no-custom\x1ftrue"

if [ "$1" ]; then
  coproc "$1"
  exit 0
fi

echo "foot"
echo "librewolf"
