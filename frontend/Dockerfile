# Use official nginx image to serve static files
FROM nginx:alpine

# Copy all frontend files into nginx default directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Run nginx
CMD ["nginx", "-g", "daemon off;"]
