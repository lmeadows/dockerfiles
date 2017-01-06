# datadog-apm

### Image
- Source `datadog/docker-dd-agent`
- Linked (trigger build when the image changes)
    - `datadog/docker-dd-agent`

### Environment variables
`DD_API_KEY` - Datadog API key

### Volumes
None

### Ports
- `7777` - Agent listening port

### Example
#### Running
```
docker run \
    -p 7777:7777 \
    -e DD_API_KEY=yourkeyhere \
    chauffer/datadog-apm
```

### Versions
`latest`
