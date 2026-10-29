FROM nginx:alpine

# Install the NGINX JavaScript module
RUN apk add --no-cache nginx-module-njs

# Copy configuration, njs script, and HTML file
COPY nginx.conf /etc/nginx/nginx.conf
COPY get_ram.js /etc/nginx/get_ram.js
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
