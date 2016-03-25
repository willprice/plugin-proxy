if not test -e "$FISH_TANK"
  echo 'error: fish-tank is required to run these tests (https://github.com/terlar/fish-tank)'
  exit 1
end

function assert_status
    set -l expected_status $argv[1]
    assert $expected_status $status
end

set -l current_directory (dirname (status -f))
source "$FISH_TANK/tank.fish"
source "$current_directory"/../_omf_plugin_proxy_*.fish
source "$current_directory"/../{,no}proxy.fish
