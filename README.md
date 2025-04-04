# machine-remote-access

# Ensure that SSH keys are set up for passwordless login to each machine

# Otherwise, if necessary, use sshpass for password authentication.
# Example of using sshpass (uncomment if needed): 
        #sshpass -p 'your_password' ssh $machine /usr/ucb/w
# Note: The above command assumes that the 'w' command is available on the remote machines.
# The 'w' command shows who is logged on and what they are doing.




### **Explanation**

1. **Array of Machines**:
   - The `machines` array (`machines=("grape" "lemon" "kiwi" "melon")`) makes the list of machine names easily modifiable for reusability.

2. **Looping Through Machines**:
   - `${machines[@]}` iterates through all elements in the `machines` array.
   - Each machine name is stored in the variable `$machine` during each iteration.

3. **Remote Execution**:
   - The script uses `ssh` to connect to each machine and runs the `/usr/ucb/w` command remotely.

4. **Echo for Output**:
   - `echo` provides a message to indicate which machine is being accessed.


# Commands for Execution

1. # Make the script executable:  

        chmod +x remac.sh

2. # Run the script:

        ./remac.sh
   
   

### **Reusability**

# Modify the `machines` array:
          
          machines=("apple" "banana" "cherry")
