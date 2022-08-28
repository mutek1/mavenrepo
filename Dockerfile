# FROM ubuntu
# RUN apt-get update
# RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
# RUN apt-get -y install apache2
# ADD . /var/www/html
# ENTRYPOINT apachectl -D FOREGROUND
# ENV name Docker_Jenkins_K8S

FROM ubuntu 
RUN apt update 
RUN apt-get -y install apache2
# RUN apt install –y apache2-utils 
# RUN apt clean 
EXPOSE 80
# CMD [“apache2ctl”, “-D”, “FOREGROUND”]
ENTRYPOINT apachectl -D FOREGROUND
ENV name Docker_Jenkins_K8S
