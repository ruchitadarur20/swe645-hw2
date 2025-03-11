<p><center><h1><b>SWE 645: ASSIGNMENT</b></h1></center><p>

## Team Member
1.⁠ ⁠Lydia Prince Edwin Sheeba - G01507041  
2.⁠ ⁠Miruthula Jawahar - G01524859  
3.⁠ ⁠Mohana Priyanka Romala - G01506969  
4.⁠ ⁠Ruchita Darur - G01514822

## INTRODUCTION
This document provides step-by-step instructions for containerizing a Java web application using Docker and Tomcat. It covers the process from building the ( .war ) file with Maven, creating a Docker image, running a container, and pushing the image to Docker Hub. This setup ensures a portable and scalable deployment, making it easier to integrate into Kubernetes for further orchestration.


# CREATING AND PUSHING A DOCKER IMAGE

## PREREQUISITES
Before proceeding, ensure having the following installed on our system:
- Docker Desktop (or Docker CLI)
- Java JDK 17+
- Apache Maven
- A GitHub account for source code management
- VS Code (Visual Studio Code)

## CLONE THE REPOSITORY
- First, clone the project repository from GitHub: <br>
```
git clone https://github.com/ruchitadarur20/swe645-hw2.git
cd swe645-hw2
```

## Build the Java Web Application (.war File) 
- Run the following Maven command to build the Java application and generate the .war file: <br>
```
mvn clean package
```

![Getting Started](assets/mvncleanpackage.png)
- The compiled .war file will be located in the target/ directory:<br>
```
ls -l target/
```
- Expected Output:<br>
StudentSurvey-0.0.1-SNAPSHOT.war

![Getting Started](assets/locationtarget.png)

- This is the File Structure:-  

![Getting Started](assets/filestructor.png)

## Creating the Dockerfile
- Create a Dockerfile inside the root directory of our project with the following content: <br>

![Getting Started](assets/docker.png)

- Building the Docker Image
- Run the following command to build the Docker 
```
image: docker build -t ruchitadarur/student-survey:latest .
```
![Getting Started](assets/dockerimage.png)

- To verify the image was created successfully, run:
```
docker ps
```
![Getting Started](assets/dockercreated.png)

## Testing the Application
- Once the container is running, open your web browser and go to:
```
http://localhost:8080/student-survey-1.0-SNAPSHOT/
```
![Getting Started](assets/deployedapplication.png)

Now we can see the deployed application.

## Pushing the Docker Image to Docker Hub
- First, log in to Docker Hub:
```
docker login
```
```
docker tag ruchitadarur/student-survey:latest ruchitadarur/student-survey:v1

docker push ruchitadarur/student-survey:v1
```
![Getting Started](assets/Imgtodockerhub.png)

