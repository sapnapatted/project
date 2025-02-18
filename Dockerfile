# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Update the package list and install required packages
RUN apt-get update && apt-get install -y python3-venv

# Create and activate a Python virtual environment
RUN python3 -m venv venv
RUN . venv/bin/activate

# Copy the application code into the container
COPY . /app/

# Install the required Python packages
RUN pip install -r requirements.txt

# Expose port 5000 for the Flask application
EXPOSE 5000

# Define the command to run when the container starts
CMD ["python", "main.py"]
