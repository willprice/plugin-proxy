set -l fish_tank /usr/local/share/fish-tank/tank.fish
if not test -e $fish_tank
  echo 'error: fish-tank is required to run these tests (https://github.com/terlar/fish-tank)'
  exit 1
end

function assert_status
    set -l expected_status $argv[1]
    assert $expected_status $status
end

set -l current_directory (dirname (status -f))
source "$fish_tank"
source "$current_directory"/../_omf_plugin_proxy_*.fish
source "$current_directory"/../{,no}proxy.fish
