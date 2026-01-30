# Nuke Port

nuke() {
  local port="$1"

  if [ -z "$port" ]; then
    echo "Usage: nuke <port>"
    return 1
  fi

  lsof -t -i:"$port" | xargs kill
}