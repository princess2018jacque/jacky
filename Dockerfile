# Use lightweight nginx image
FROM nginx:alpine

# Copy all project files into nginx default web root
COPY . /usr/share/nginx/html

# Healthcheck to make sure the container is serving content
HEALTHCHECK --interval=30s --timeout=3s \
  CMD wget -qO- http://localhost:80/ >/dev/null || exit 1