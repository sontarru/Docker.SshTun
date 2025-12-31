# SshTun

The dockerized SOCKS5 proxy via the SSH tunnel.

`compose.yaml` sample:

```yaml
services:
  sshtun:
    image: ghcr.io/sontarru/sshtun:latest
    restart: unless-stopped
    container_name: dnsmasq:latest
    user: ${USER}
    ports:
      - 9090:9090
    environment:
      - SERVER: server.com[:port]
    volumes:
      - /etc/passwd:/etc/passwd
      - /etc/group:/etc/group
      - ${HOME}/.ssh:${HOME}/.ssh
```
