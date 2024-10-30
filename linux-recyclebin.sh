#!/bin/bash
sudo apt install trash-cli;

rm_dir=$(dirname $(which rm));
rmdir_dir=$(dirname $(which rmdir));
trash_bin=$(which trash);

mv $rm_dir/rm $rm_dir/unsafe-rm;
mv $rmdir_dir/rmdir $rmdir_dir/unsafe-rmdir;

ln -s $rm_dir/rm $trash_bin;
ln -s $rmdir_dir/rmdir $trash_bin;
