# Use an official Python runtime as a parent image
FROM node:boron

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN npm install

# Make port 80 available to the world outside this container
EXPOSE 3000

# Define environment variable
ENV PUREACCESS_IP 192.168.65.1
ENV PUREACCESS_PORT 9080

RUN sed -i -e "s/localhost/$PUREACCESS_IP/g" ./api/swagger.yaml
RUN sed -i -e "s/9080/$PUREACCESS_PORT/g" ./api/swagger.yaml

# Run index.js when the container launches
CMD ["node", "index.js"]