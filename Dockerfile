# Use the official NGINX base image
FROM nginx

# Copy the custom configuration file to the container
# COPY nginx.conf /etc/nginx/nginx.conf

# Copy the web content to the default NGINX document root
COPY ./* /usr/share/nginx/html

# Expose port 80 to allow incoming HTTP traffic
EXPOSE 80

# Start the NGINX server when the container starts
CMD ["nginx", "-g", "daemon off;"]
