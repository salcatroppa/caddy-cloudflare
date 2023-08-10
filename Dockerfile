FROM caddy:2.7.2-builder AS builder
RUN xcaddy build v2.7.3 --with github.com/caddy-dns/cloudflare

FROM caddy:2
COPY --from=builder /usr/bin/caddy /usr/bin/caddy

LABEL org.opencontainers.image.source=https://github.com/salcatroppa/caddy-cloudflare-docker
LABEL org.opencontainers.image.description="A Caddy Docker image with just the caddy-dns/cloudflare module."
