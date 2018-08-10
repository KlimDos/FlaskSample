FROM ubuntu:latest
MAINTAINER Sasha Alimov "klimdos@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev build-essential
ADD . /FlaskSample
WORKDIR /FlaskSample
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
EXPOSE 8090:8090
CMD ["FlaskSample.py"]
