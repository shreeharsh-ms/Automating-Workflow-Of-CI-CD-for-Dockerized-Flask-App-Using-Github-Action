# Docker file
FROM python:3.8-slim
# Set the working directory in the container
WORKDIR /app
# Copy the requirements file into the container at /app
COPY . /app
# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt
# Copy the rest of the application code into the container at /app
COPY . .

# Expose the port the app runs on
EXPOSE 8000
# Define the command to run the app
CMD ["python", "app.py"]