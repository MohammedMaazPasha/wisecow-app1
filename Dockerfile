# Use an official Python runtime as a parent image (adjust according to your app's requirements)
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable (if needed, for example, Flask)
# ENV FLASK_APP=app.py

# Run Wisecow application (adjust according to how the app is started)
CMD ["python", "app.py"]
