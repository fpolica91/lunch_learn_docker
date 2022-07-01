## Commands used in this lesson:
[]: # Language: markdown
[]: # Path: info.md
docker pull \<images-name>:\<version> : pulls image from Docker registry
docker run \<images-name>:\<version> : runs container from mentioned image
docker ps : shows all running containers
docker ps -a: shows all available containers
docker exec: executes a command in a running container


## Part 2 Fundamentals
[]: # Language: markdown
[]: # Path: info.md
1. docker run -it \<images-name>:\<version> : runs container from mentioned image
2. apt update : updates the system
3. apt install vim : installs vim | nano
4 vim todays_date.py : creates a python file todays_date.py
5 docker commit -m "<commit message>" <container_id/name> <new_image_name>:<version>

  ##### Part 2.1 (Volume)
    []: # Language: markdown
    []: # Path: info.md
    **Commands used in this lesson:**
    1. docker volume --help : shows volume commands
    2 docker volume create <volume_name> : creates a volume
    3 docker volume inspect <volume_name> : shows details of a volume
    4 docker volume ls : shows all volumes
    5 docker volume run -v: to mount a volume

    (Running with volume)
    1. docker run -it -v /Users/germanpolicarpo/Desktop/:/desktop datebypy:1.0
    2. docker run -it -v <absolute_path>:<folder path or new folder name>:ro date_project:1.0 # read only using `ro` flag
    2. ls /desktop : shows files in the mounted volume

    (Creating a volume)
    1. docker volume create <volume_name> : creates a volume (project_directory)
    2. docker volume inspect <volume_name>: shows details of a volume
    3. docker run -it -v project_directory/:project_directory datebypy:1.0




    
