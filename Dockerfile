# Use an official Python runtime as a parent image
FROM python:2.7-stretch

RUN pip install virtualenv
RUN virtualenv virtual
RUN /bin/bash -c "source /virtual/bin/activate"

# Set the working directory to /app
WORKDIR /tmp

# Copy the current directory contents into the container at /app
COPY . /tmp

# Install any needed packages specified in requirements.txt
RUN pip install --upgrade -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run server when the container launches
ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
