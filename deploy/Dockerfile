# Only the files the web remake serves. The original game files, disassembly, MetaWINDOW and the
# art masters must never end up in this image (see .dockerignore).
FROM caddy:2-alpine
COPY deploy/Caddyfile /etc/caddy/Caddyfile
COPY index.html style.css favicon.png apple-touch-icon.png game.json dialogue.json /srv/
COPY js /srv/js
COPY assets/web /srv/assets/web
