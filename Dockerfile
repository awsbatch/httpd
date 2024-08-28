# Use the official NGINX image from the Docker Hub
FROM nginx:alpine

# Copy custom static HTML files to the NGINX default directory
COPY ./index.html ./ /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]
