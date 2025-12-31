# SshTun

The dockerized SOCKS5 proxy via the SSH tunnel.

`compose.yaml` sample:

```yaml
services:
  sshtun:
    image: ghcr.io/sontarru/sshtun:latest
    restart: unless-stopped
    container_name: sshtun
    user: 1000:1000
    ports:
      - 9090:9090
    command: server.com[:port]
    volumes:
      - /etc/passwd:/etc/passwd
      - /etc/group:/etc/group
      - ${HOME}/.ssh:${HOME}/.ssh
```
