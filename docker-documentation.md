# Docker Containerization Process

## Overview
This document outlines the process used to containerize the Student Survey web application using Docker.

## Docker Image Details
- Base Image: nginx:alpine
- Exposed Port: 80
- Image Location: [Docker Hub Link: https://hub.docker.com/r/ruchitadarur/student-survey]

## Implementation Steps
1. Created a Dockerfile using Nginx as the web server
2. Built the Docker image locally using `docker build -t student-survey .`
3. Tested the container locally with `docker run -p 8080:80 student-survey`
4. Tagged the image with Docker Hub username: `ruchitadarur/student-survey:latest`
5. Pushed the image to Docker Hub repository

## How to Run the Container
```bash
docker pull ruchitadarur/student-survey:latest
docker run -p 8080:80 ruchitadarur/student-survey:latest
