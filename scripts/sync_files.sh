#!/usr/bin/env bash

script_path=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

source_path=~/.config/nvim
dest_path="$(dirname "$script_path")"


echo "Copying source: " $source_path
echo "To destination: " $dest_path

rsync -avu --delete $source_path $dest_path
