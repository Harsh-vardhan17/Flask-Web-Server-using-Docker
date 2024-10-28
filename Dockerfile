# Dockerfile

# Use an official Python runtime as a base image
FROM python:3.8-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy requirements.txt file into the container
COPY requirements.txt .

# Install dependencies using pip
RUN pip install -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Expose port 5000 to access the Flask app
EXPOSE 5000

# Run the Flask application
CMD ["python", "app.py"]
