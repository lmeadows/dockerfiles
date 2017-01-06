# nginx-autoindex

### Image
- Source `nginx`
- Linked (trigger build when the image changes)
    - `nginx`

### Purpose

### Environment variables
None

### Volumes
`/usr/share/nginx/html` - Will be served on port 80 with autoindex

### Ports
- `80` HTTP

### Example
#### Running
```
docker run \
    -p 80:80 \
    -v /home/simone/www:/usr/share/nginx/html \
    chauffer/nginx-autoindex
```

### Versions
`latest`
