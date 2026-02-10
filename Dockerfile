# Use the official Python 3.11 image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8000
EXPOSE 8000

# Health check to verify that the application is running
HEALTHCHECK CMD curl --fail http://localhost:8000/ || exit 1

# Run the application (replace 'app.py' with your main app file)
CMD ["python", "app.py"]