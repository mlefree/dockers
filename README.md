# Dockerz

> Some demo instances using docker

| Id | Folder | Description | Remarks |
| ------ | ------ | ----------- | ----------- |
| 1 | Nuxeo-10-10 | Nuxeo 10.10 (LTS 2019) out Of The Box with all included (DAM, ARender, AI, IMAP)  |  |


## Prerequisites

Need an **/etc/hosts** like :

```.env
127.0.0.1       localhost
255.255.255.255 broadcasthost
::1             localhost
127.0.0.1       nuxeo.yourcorp.com apreviewer.yourcorp.com
```

Software : Docker

## Start

Start existing demo :

```bash
cd Nuxeo-10-10    
. launch.sh 
# or (with caution)
. launch.sh --clean
```

If you need more plugins or config, feel free to customize your new project.


### Tools

Like : 
```bash
# warning !
docker system prune -a --volumes

docker container ls
docker exec -i -t 301fe71a5e5b /bin/bash
nuxeoctl mp-list 
```

## Todo

- [ ] Fixing ARender integration


## Support

@mat_cloud
