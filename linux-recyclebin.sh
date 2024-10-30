#!/bin/bash
sudo apt install trash-cli;

rm_dir=$(dirname $(which rm));
rmdir_dir=$(dirname $(which rmdir));
trash_bin=$(which trash);

sudo mv $rm_dir/rm $rm_dir/unsafe-rm;
sudo mv $rmdir_dir/rmdir $rmdir_dir/unsafe-rmdir;

sudo ln -s $trash_bin $rm_dir/rm;
sudo ln -s $trash_bin $rmdir_dir/rmdir;
