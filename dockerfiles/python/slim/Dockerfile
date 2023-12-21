FROM python:alpine
LABEL author = "balumahendra"
EXPOSE 5000
# fork the code to my repository
# in that code write a Dockerfile
# goto instance and gitclone of that link
# add command used from local to copy 
RUN mkdir /flask-hello-world
ADD . /flask-hello-world
RUN cd flask-hello-world && \
    pip3 install flask
WORKDIR /flask-hello-world
CMD ["flask", "run", "-h", "0.0.0.0"]