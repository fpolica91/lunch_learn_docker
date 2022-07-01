### Problem statement: 
Pull the Python 3.8 image and keep track the number of layers it has fetched.

Create a Docker volume named app_files.

Create a container named ‘first_container’ from the Python 3.8 image with app_files volume attached to it.

Write a Python program named ‘current_time.py’ to display the current timestamp inside the app_files volume.

Create another container named ‘second_container’ from the Python 3.8 image and update the Python script located in ‘app_files’ volume to print the current date.