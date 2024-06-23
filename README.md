# debian-12-bookworm-palworld-server

## Server Installation
```
useradd -s /bin/bash palworld
su -l palworld
steamcmd +force_install_dir /home/palworld/Steam/steamapps/common/steamworks +login anonymous +app_update 1007 +quit
steamcmd +force_install_dir /home/palworld/Steam/steamapps/common/PalServer +login anonymous +app_update 2394010 validate +quit
```

## Server Start
```
/home/palworld/Steam/steamapps/common/PalServer/PalServer.sh -useperfthreads -NoAsyncLoadingThread -UseMultithreadForDS
```
