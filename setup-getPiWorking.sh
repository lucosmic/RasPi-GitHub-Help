#Basic Start up of Pi
sudo apt-get update
sudo apt-get upgrade

sudo nano /boot/config.txt
##uncomment the following lines:
#dtparam=i2c_arm=on
#dtparam=i2s=on
#dtparam=spi=on

##write below
#dtparam=i2c_arm_baudrate=10000

#Activate SSH, SPI and I2C

sudo pip3 install --upgrade setuptools
#If above doesn't work try
sudo apt-get install python3-pip

read -n1 -r -p "Pi Setup complete. Press any key to continue..." key
