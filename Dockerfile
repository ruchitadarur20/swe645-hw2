# Use Nginx as the base image
FROM nginx:latest

# Remove default nginx website files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML files to Nginx
COPY src/main/webapp/ /usr/share/nginx/html/

# Expose port 80 to access the site
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]