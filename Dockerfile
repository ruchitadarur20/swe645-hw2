# Use the official Nginx image
FROM nginx:latest

# Remove default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML files into Nginx's serving directory
COPY src/main/webapp/ /usr/share/nginx/html/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
