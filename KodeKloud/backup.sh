# This script creates a backup of given file by creating a copy as bkp
# For example some-file is backed up as some-file_bkp

file_name="create-and-launch-rocket"

cp -r $file_name ${file_name}_bkp