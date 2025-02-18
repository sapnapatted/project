# Flask Dockerized Application

## Overview
This repository contains a simple Flask application that has been containerized using Docker. The application responds with a "Hello, World!" message when you access its root URL. This README provides information on how to set up and run the Flask application within a Docker container.


## Prerequisites
Before you get started, ensure that you have the following installed on your local machine:
- Python
- Docker


## Building the Docker Image

To build the Docker image for this Flask application, follow these steps:

    docker build -t flask-app:1.0 .

-t flask-app:1.0: This part of the command tags the Docker image with the name flask-app and version 1.0. The -t flag stands for "tag" and allows you to provide a name and optionally a version tag for the image.

.: The dot . at the end of the command is crucial. It specifies the build context. The build context is the path to the directory where the Dockerfile and any other files needed for building the image are located. In this case, we use . to represent the current directory. It means that Docker will look for the Dockerfile and related files in the current directory and use them to build the image.

So, when you run docker build -t flask-app:1.0 ., Docker will use the Dockerfile located in the current directory (the directory where you run the command) as the blueprint for building the image.

This command will create a Docker image tagged as flask-app:1.0 based on the provided Dockerfile.

## Running the Docker Container

Once the Docker image is built, you can run a Docker container from it using the following command:

    docker run -p 8080:5000 flask-app:1.0
This command maps port 8080 on your host to port 5000 inside the Docker container, allowing you to access the Flask application.

Accessing the Application
After running the Docker container, you can access the Flask application:

Open your web browser and navigate to http://localhost:8080. You should see the "Hello, World!" message.
Stopping the Container
To stop the running Docker container, use Ctrl+C in the terminal where the container is running. This will gracefully stop the Flask application and the container.

## Project Structure
- app.py: The main Flask application code.
- requirements.txt: The list of Python packages required for the application.
- Dockerfile: Instructions for building a Docker image for the application.
- venv/: The Python virtual environment used in the container.
- README.md: Documentation for the project.

## Additional Information
This project uses an official Python 3.10 runtime as the base image for the Docker container.
The Flask application is exposed on port 5000 inside the container, mapped to port 8080 on your host machine.
The containerization process includes creating and activating a Python virtual environment (venv) and installing the required Python packages from requirements.txt.

Final Result:

<img width="1440" alt="Screenshot 2023-10-06 at 23 18 11" src="https://github.com/DevOpsHK0/Containerizing-Python-Apps-with-Docker/assets/13016369/e250895d-3b4a-4d14-814d-e0a22362864c">


