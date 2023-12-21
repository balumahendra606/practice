FROM node:14
LABEL project="qt learning"
LABEL author="balu"
RUN git clone https://github.com/simonplend/example-app-nodejs-backend-react-frontend.git && \
    cd example-app-nodejs-backend-react-frontend && \
    npm install && \
    npm run build 
WORKDIR /example-app-nodejs-backend-react-frontend
EXPOSE 3000    
CMD [ "npm","start","--host","0.0.0.0" ]    