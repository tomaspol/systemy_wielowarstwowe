# syntax=docker/dockerfile:1

FROM python:3.12.1
WORKDIR /app
#requirments.txt content: Flask
COPY requirments.txt requirments.txt
RUN pip3 install -r requirments.txt
COPY . .
#startscript.sh content: python3 -m flask run
CMD ./startscript.sh
EXPOSE 8000