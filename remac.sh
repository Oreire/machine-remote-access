#!/bin/bash
# Define an array of EC2 instance IP addresses
machines=("35.179.130.197")

# Loop through the array and execute the command on each machine
for machine in "${machines[@]}"
do
  echo "Connecting to EC2 instance with IP: $machine..."
  ssh $machine /usr/ucb/w  # Executes 'w' command remotely to check logged-in users
done
