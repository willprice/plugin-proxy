#!/usr/bin/env fish
set -x tank_reporter spec

source (dirname (status -f))/helper.fish
tank_run (dirname (status -f))/test_*.fish
