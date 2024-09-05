# pull the nginx base image from the docker Hub
FROM nginx:latest

# remove the default nginx html page 
RUN rm -rf /usr/share/nginx/html/*

# copy the current project directory to the nginx html folder
COPY . /usr/share/nginx/html/

# expose the port on 80
EXPOSE 80

CMD ["nginx" , "nginx" , "daemon off;"]