## docker building image
  
  ```docker build -t flask_app:1.0 ." 
  ```
  -t <image-name>:<tag>

  ```docker run -p 5000:5000 flask_app:1.0 ." 
  ```
  -p <host-port>:<container-port>
  running deamon mode
  docker run -d -p 5000:5000 flask_app:1.0

## logs 
  docker logs <CONTAINER ID>

  docker logs <CONTAINER ID> > logs.txt # saves logs to a file
  docker logs <CONTAINER ID> -f # logs continuously
  lsof -i TCP:5000 # shows all connections to the port
  kill -9 <PID> # kills the process
 