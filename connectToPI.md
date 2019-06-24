
# How to Connect a Linux PC -> Pi
http://www.circuitbasics.com/how-to-connect-to-a-raspberry-pi-directly-with-an-ethernet-cable/
https://www.raspberrypi.org/documentation/remote-access/ip-address.md


TL;DR:
```
ssh pi@raspberrypi.local -XCf pcmanfm
```
opens Raspberry Pi's File Manager

## Headless Pi:
1. Look at device list on your router OR run:
```
nmap -sn ###.###.###.0/24
# where ###.###.### is the part of your computer's IP address
```

2. On Pi: Display ip address
```
hostname -I
```


3. On PC:
* Connect to the terminal on your Pi
```
ssh pi@##.##.##.##
#OR
ssh pi@raspberrypi.local     #(thru ethernet)
```
* choose yes
* enter pi's password, default = raspberry
* *If it returns the error: "Connection reset by.."*:
  * The same IP address was likely already being used by another Raspberry Pi.
  * Connect the Pi to a monitor and type the following into the Pi's terminal:
```
sudo rm /etc/ssh/ssh_host_*
sudo dpkg-reconfigure openssh-server
```

    


## Open VNC client
1. On Pi: Find the Gateway address
```
route -ne
```
Gateway could be something like 10.201.12.1

2. On Pi: Start the VNC server
`vncserver :3 -geometry 1280x800 -depth 24`

3. On PC: Run VNC Client
```
remmina     #(good program for if PC is running Linux)
```
* Choose VNC in the connection-type drop-down
* Type in the address from the `ip a show` command then `:5903`, like `10.201.14.223:5903`
  * OR Type in `raspberrypi.local:5903`

4. On Pi: To kill the VNC server
```
vncserver -kill :3
```


# How to Connect RasPi to WiFi via CLI
https://www.raspberrypi.org/documentation/configuration/wireless/wireless-cli.md
* This lists the wireless networks available:
```
sudo iwlist wlan0 scan | grep ESSID
```


* Add a secured network by following the instructions on the site.
  * Basically edit the following file with: `sudo nano /etc/wpa_supplicant/wpa_supplicant.conf`

* Connect to wifi with 
```
wpa_cli -i wlan0 reconfigure
```

* Verify successful connection with 
```
ifconfig wlan0
```
  * Check if the "inet addr" has an address beside it. 


