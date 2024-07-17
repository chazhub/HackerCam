# Dockerfile author and contact information
# Author       : chazhub
# GitHub       : https://github.com/chazhub
# Telegram     : https://t.me/maliciously666
# Email        : azmimujahid10@gmail.com
# Date         : 17-07-2024
# Main Lang    : Shell

# Use the latest Debian base image
FROM debian:latest

# Set the maintainer label to provide contact information
LABEL MAINTAINER="https://github.com/chazhub/HackerCam"

# Set the working directory inside the container to /HackerCam/
WORKDIR /HackerCam/

# Copy the contents of the current directory (the build context) to /HackerCam/contents in the container
COPY . /HackerCam/contents

# Update the package repositories and install necessary packages
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y curl unzip wget && \
    apt-get install --no-install-recommends php -y && \
    apt-get clean

# Define the main command to run when the container starts
CMD ["./hcam.sh", "--no-update"]

# Instructions for building and running the Docker container
# Build the container with:
#   "sudo docker build . -t chazhub/hackercam:latest"
# Run the container interactively with automatic cleanup after it exits:
#   "sudo docker run --rm -it chazhub/hackercam:latest"
# Pull the pre-built container image from Docker Hub and run it interactively:
#   "sudo docker pull chazhub/hackercam"
#   "sudo docker run --rm -it chazhub/hackercam"
