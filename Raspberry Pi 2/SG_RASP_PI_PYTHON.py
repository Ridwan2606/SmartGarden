import os
import glob
import time
import sys
import RPi.GPIO as GPIO
import time
import requests
import json
from datetime import datetime
from requests.auth import HTTPBasicAuth
from urllib import request, parse

json
GPIO.setmode(GPIO.BOARD)
GPIO.setwarnings(False)

#Temp sensor: Black - ground, yellow - data GPIO 4, red- 3.3v

#For led: Positive to a selected GPIO and  negative to ground
ledPin=12

GPIO.setup(ledPin,GPIO.OUT)
GPIO.output(ledPin,GPIO.HIGH)

#Setting up the file directory for receiving data in a textfile at a specific path
os.system('modprobe w1-gpio')
os.system('modprobe w1-therm')
base_dir = '/sys/bus/w1/devices/'
device_folder = glob.glob(base_dir + '28*')[0]
device_file = device_folder + '/w1_slave'

#Returns the generated lines from a specific textfile related to the
#temp sensor data collection
def read_temp_raw():
    f = open(device_file, 'r')
    lines = f.readlines()
    f.close()
    return lines

#Uses lines returned from read_temp_raw() to return the value of the
# tempeature in celsius and fahrenheit
def read_temp():
    lines = read_temp_raw()
    while lines[0].strip()[-3:] != 'YES':
        time.sleep(0.2)
        lines = read_temp_raw()
    equals_pos = lines[1].find('t=')
    if equals_pos != -1:
        temp_string = lines[1][equals_pos+2:]
        temp_c = float(temp_string) / 1000.0
        #temp_f = temp_c * 9.0 / 5.0 + 32.0

    ledstatus = 'OFF'
    
    if temp_c >= 27:
        GPIO.output(ledPin,GPIO.HIGH)
        
        ledstatus = 'ON'
    else:
        GPIO.output(ledPin,GPIO.LOW)
        ledstatus = 'OFF'
                
    return temp_c, ledstatus, datetime.now().strftime('%Y-%m-%d %H:%M:%S')

#main program execution
preledsta= "N/A"
while True:
    tempInC,ledsta, timestamp= read_temp()
    
    print ("Current temperature: " + str(tempInC) + " degrees Celcius   " + timestamp)
    if preledsta!=ledsta:
        print("LED Turning " + ledsta + "...")
    try:
        requests.post('http://23.97.147.23:3000/api/add_record', data={"temp":tempInC,"fan":ledsta, "timestamp": timestamp}, auth=HTTPBasicAuth('smart', 'garden'))
    except requests.Timeout:
    # back off and retry
        pass
    except requests.ConnectionError:
        pass
    time.sleep(5)
    preledsta = ledsta
	
