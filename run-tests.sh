#!/bin/bash
# https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -eou pipefail

/opt/bin/entry_point.sh &>/dev/null &

echo "selenium start initiated!!!"

/bin/bash