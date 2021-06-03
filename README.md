# lsyncd-demo
Working example of synchronized directory on multiple container using lsyncd

## How to run
```bash
docker-compose up
```
The file on `./example/storageN` will be synchronized between these 3 container

## Note 
- If you modify the dockerfile, make sure the ssh server is running 
- `StrictHostChecking no` in config file is important, if it is not present, rsh can't start since
linux normally will prompt an interactive yes/no question whether we want to add that host to known_hosts
- username and password is `root` (hardcoded on config file), to make it easy to scale the container, since exchanging public key
between container will be quite complicated
  
