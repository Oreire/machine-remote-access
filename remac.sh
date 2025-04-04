#!/bin/bash
# Define an array of EC2 instance IP addresses
machines=("13.40.53.250")

# Loop through the array and execute the command on each machine
for machine in "${machines[@]}"
do
  echo "Connecting to EC2 instance with IP: $machine..."
  ssh $machine /usr/ucb/w  # Executes 'w' command remotely to check logged-in users
done
