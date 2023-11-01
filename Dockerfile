#use official Python runtime as a parent image
FROM python:3.8-slim

#set the working directory to /app
WORKDIR /app

#copy the current directory contents into the container at /app
COPY . /app

#install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

#run default command
CMD ["python", "basic.py"]
