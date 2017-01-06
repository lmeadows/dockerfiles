# bitlbee-steam

### Image
- Source `alpine:latest`
- Linked (trigger build when the image changes)
    - `alpine`

### Environment variables
None

### Volumes
`/var/lib/bitlbee` - Bitlbee config,data directory

### Ports
- `7777` - bitlbee listening port

### Example
#### Running
```
docker run \
    -p 7777:7777 \
    -v /home/simone/bitlbee-steam:/var/lib/bitlbee \
    chauffer/bitlbee-steam
```

### Versions
`latest`
