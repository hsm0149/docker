FROM ubuntu:latest



# Install Nginx.

RUN apt-get update

RUN apt-get install -y -q nginx



# file copy 

COPY index.html /usr/share/nginx/index.html



# Define working directory.

WORKDIR /etc/nginx



# Define default command.

CMD ["nginx" ,"-g", "daemon off;"]



# Expose ports.

EXPOSE 80

EXPOSE 443



