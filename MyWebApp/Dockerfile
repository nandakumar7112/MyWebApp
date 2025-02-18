# Use an official Tomcat runtime as a parent image
FROM tomcat:9.0

# Set the working directory inside the container
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file into the webapps folder of the Tomcat container
COPY target/MyWebApp.war ./ROOT.war

# Expose port 8080 for the container
EXPOSE 8080

# Start the Tomcat server
CMD ["catalina.sh", "run"]
