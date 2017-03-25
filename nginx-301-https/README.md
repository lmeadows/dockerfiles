# nginx-301-https

### Image
- Source `chauffer/nginx-for-rancher`
- Linked (trigger build when the image changes)
    - `chauffer/nginx-for-rancher`

### Environment variables
None

### Volumes
None

### Ports
- `80` HTTP, returns 301 of the same path replacing `http` to `https`
- `81` HTTP, returns 200 on path `/` 

### Example
#### Running
```
docker run \
    -p 80:80 \
    chauffer/nginx-301-https
```

### Versions
`latest`
