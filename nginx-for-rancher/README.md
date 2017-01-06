# nginx-for-rancher

### Image
- Source `nginx:alpine`
- Linked (trigger build when the image changes)
    - `alpine`
    - `nginx`

### Purpose
`nginx`, respecting `X-Forwarded-For` headers from `10.42.0.0/16` IPs.

### Environment variables
None

### Volumes
`/usr/share/nginx/html` - Served on port 80

### Ports
- `80` HTTP

### Example
#### Running
```
docker run \
    -p 80:80 \
    -v /home/simone/www:/usr/share/nginx/html \
    chauffer/nginx-for-rancher
```

# Versions
`latest`
