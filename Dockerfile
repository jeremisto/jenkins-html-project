# Use the Nginx web server image
FROM nginx:alpine

# Copy the HTML page into the Nginx web directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80
