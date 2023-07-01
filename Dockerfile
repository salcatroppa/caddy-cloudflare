FROM caddy:2-builder AS builder
RUN caddy-builder github.com/caddy-dns/cloudflare

FROM caddy:2
LABEL org.opencontainers.image.description="A Caddy Docker image with just the caddy-dns/cloudflare module."

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
