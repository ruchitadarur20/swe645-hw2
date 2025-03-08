# Use the official Tomcat 9 image with JDK 11
FROM tomcat:9.0-jdk11

# Set working directory inside the container
WORKDIR /usr/local/tomcat

# Remove default Tomcat applications (clean setup)
RUN rm -rf webapps/*

# Copy your application WAR file into Tomcat
COPY target/*.war webapps/ROOT.war

# Expose the Tomcat server port
EXPOSE 8080

# Run Tomcat when the container starts
CMD ["catalina.sh", "run"]



