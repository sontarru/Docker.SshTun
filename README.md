# SshTun

The dockerized SSH client.

`compose.yaml` sample for tunnelling via `tun0`:

```yaml
services:
  sshtun:
    image: ghcr.io/sontarru/ssh:latest
    restart: unless-stopped
    container_name: sshtun
    network_mode: host
    command: -w 0:0 server.com[:port]
    volumes:
      - ${HOME}/.ssh:/root/.ssh
```
