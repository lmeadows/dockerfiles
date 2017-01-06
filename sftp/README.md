# sftp

### Image
- Source `alpine:latest`
- Linked (trigger build when the image changes)
    - `alpine`

### Environment variables
- `USER` - Username for the SFTP server 
- `PASS` - Password for the SFTP server

### Volumes
`/home/$USER` - SFTP server path

### Ports
- `22` - SFTP server

### Example
#### Running
```
docker run \
    -p 22:22 \
    -e USER=simone \
    -e PASS=donthackmeplease \
    -v /home/simone/data/sftp:/home/simone \
    chauffer/sftp
```

### Versions
`latest`
