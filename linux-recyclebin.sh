#!/bin/bash

which unsafe-rm>/dev/null;
if [ $? -eq 0 ]; then
  echo 'Changes seems already made. Exiting.';
  exit 1;
fi;

echo Installing trash-cli ..
sudo apt install trash-cli;

rm_dir=$(dirname $(which rm));
rmdir_dir=$(dirname $(which rmdir));
trash_bin=$(which trash);

echo Moving rm to unsafe-rm and rmdir to unsafe-rm ..
sudo mv $rm_dir/rm $rm_dir/unsafe-rm;
sudo mv $rmdir_dir/rmdir $rmdir_dir/unsafe-rmdir;

echo Making link to run trash with rm and rmdir command
sudo ln -s $trash_bin $rm_dir/rm;
sudo ln -s $trash_bin $rmdir_dir/rmdir;

echo Everything Done !
echo rm and rmdir will now execute the trash command.
echo If you want to run the old rm and rmdir command you can run unsafe-rm and unsafe-rmdir.
