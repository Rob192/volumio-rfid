# RFID Cards for Volumio

Use RFID cards to control Volumio. The association between card IDs and URLs are maintained in a table in [AirTable](https://airtable.com/).

## Installation
```
apt-get update
apt-get install gcc libffi-dev libssl-dev python3-dev raspi-config python3-venv
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```
Create a file .env in the installation directory:

````
[Airtable]
apikey=key1234567890
````

Copy the service file to /etc/systemd/system/rfid.service and activate it 
```
sudo cp rfid.service /etc/systemd/system/rfid.service
sudo chmod 664 /etc/systemd/system/rfid.service
sudo systemctl enable /etc/systemd/system/rfid.service
sudo systemctl daemon-reload
sudo systemctl start rfid.service
```
(Nice tutorial for writting services [here](https://github.com/torfsen/python-systemd-tutorial#creating-a-system-service) )

Now your script will be put into service and will be started. To check for errors or not, you can run this command:
```
sudo service rfid status
```

To stop the script, you can run the command:
```
sudo service rfid stop
```


## Further information

* Volumio REST API: https://volumio.github.io/docs/API/REST_API.html
* How to wire the RFID reader: https://pimylifeup.com/raspberry-pi-rfid-rc522/

## Example entries

Here are some examples for pairs RFID / Spotify URL

# London Grammar
660373477523=spotify:artist:3Bd1cgCjtCI32PYvDC3ynO

# Big Big Train - Folklore
866901399775=spotify:album:3j1MgNFNI90XdSTEGDN4pa

# Sting
245858867403=spotify:artist:0Ty63ceoRnnJKVEYP0VQpk

# ???
180259887130=spotify:album:6UN8m07SmIzyDe63H0oljL
