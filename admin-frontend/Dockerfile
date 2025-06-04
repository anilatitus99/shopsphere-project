# Use lightweight nginx image
FROM nginx:alpine

# Remove the default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static admin HTML files into the Nginx public directory
COPY . /usr/share/nginx/html

# Expose port 8080 (Cloud Run expects the container to listen on $PORT = 8080)
EXPOSE 8080

# Use env var PORT to make nginx listen on 8080 (override default config)
RUN sed -i 's/80;/8080;/g' /etc/nginx/conf.d/default.conf
