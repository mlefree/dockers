# Dockerz

> Some demo instances using docker

| Id | Folder | Description | Remarks |
| ------ | ------ | ----------- | ----------- |
| 1 | Nuxeo-10-10 | Nuxeo 10.10 (LTS 2019) out Of The Box with all included (DAM, annotation, AI, IMAP)  |  |
| 2 | Nuxeo-10-10-Front | Nuxeo 10.10 (LTS 2019) Out Of The Box with a Traeffik frontside  |  |
| 3 | Nuxeo-10-10-OOTB | Nuxeo 10.10 (LTS 2019) Out Of The Box with nothing more  |  |


## Prerequisites

Software : Docker

Annotation (1) needs an **/etc/hosts** like :

```.env
127.0.0.1       localhost
255.255.255.255 broadcasthost
::1             localhost
127.0.0.1       nuxeo.yourcorp.com apreviewer.yourcorp.com
```


## Start

Start existing demo :

```bash
cd Nuxeo-10-10-OOTB 
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

- [ ] Fixing annotation integration


## Support

@mat_cloud
