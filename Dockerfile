FROM nginx:alpine

# Copy the HTML file to the Nginx server's HTML directory
COPY survey.html /usr/share/nginx/html/index.html

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]