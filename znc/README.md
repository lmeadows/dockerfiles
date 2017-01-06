znc
===

### Image
- Source `alpine:latest`
- Linked (trigger build when the image changes)
    - `alpine`

### Environment variables
None

### Volumes
`/home/znc/.znc` - ZNC data

### Ports
- user-defined `7777` for connection to the znc daemon

### Example
#### Bootstrap
```
docker run -ti \
    -p 7777:7777 \
    -v /home/simone/znc/data:/home/znc/.znc \
    chauffer/znc \
    znc --makeconf
```
#### Running
```
docker run \
    -p 7777:7777 \
    -v /home/simone/znc/data:/home/znc/.znc \
    chauffer/znc
```

Versions
===
`latest`
