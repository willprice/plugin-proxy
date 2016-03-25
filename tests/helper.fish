if not test -e "$FISH_TANK/tank.fish"
  echo 'error: fish-tank is required to run these tests (https://github.com/terlar/fish-tank)'
  exit 1
end

function assert_status
    set -l expected_status $argv[1]
    assert $expected_status $status
end

source "$FISH_TANK/tank.fish"
set -l script_directory (dirname (status -f))
set fish_function_path $script_directory/.. $fish_function_path
