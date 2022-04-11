# Set base image (host OS)
FROM python:3.8-alpine

EXPOSE 8000/tcp

# Set the working directory in the container
WORKDIR /website

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install any dependencies
RUN pip install -r requirements.txt

# Copy the content of the local src directory to the working directory
COPY . .

# Specify the command to run on container start
CMD [ "python", "./test.py" ]
