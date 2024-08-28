# Use the official NGINX image from the Docker Hub
FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*
# Copy custom static HTML files to the NGINX default directory
COPY ./index.html ./1.jpg /usr/share/nginx/html/
RUN chown -R nginx:nginx /usr/share/nginx/html
# Expose port 80 to the outside world
EXPOSE 80

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]
