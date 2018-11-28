#!/bin/bash
cd `dirname $0`
echo "Adding user permissions to Cura installation files..."
echo "Note: You may need to enter your superuser password to continue"
sudo chmod go+rx Ultimaker_Cura-3.6.0.AppImage
echo "Granting serial port access..."
sudo usermod -aG dialout $USER
echo "Ensuring access to temp file directory..."
echo "Note: If you see warnings about mkdir failing, this is normal"
cd $HOME/.local/share
mkdir cura
mkdir cura/3.6
sudo chmod -R go+rwx cura
echo "Ensuring access to preference files..."
echo "Note: If you see warnings about mkdir failing, this is normal"
cd $HOME/.config
mkdir cura
sudo chmod -R go+rwx cura
echo "Ensuring access to cache files..."
echo "Note: if you see warnings about mkdir failing, this is normal"
cd $HOME/.cache
mkdir cura
mkdir cura/3.6
sudo chmod -R go+rwx cura
echo "Script complete!  You can now run Cura using this user account."
