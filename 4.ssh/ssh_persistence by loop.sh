#!/bin/bash

while true
do
    ssh -N -L 8000:localhost:3423 user@remote_host
    echo "Connection broke. reconnecting..."
    sleep 2
done



# -N for not interactive ssh connecton
# -L for forward tunneling
# 8000 port of localhost on which we will bind the remote host address
# localhost:3423 remote host and port whill bind to localhost's port 8000
# user@remote_host ==> username @ remote ip address