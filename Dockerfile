FROM php:7.3-apache
#run update
RUN apt-get update
#Install git
RUN apt-get -y install git
RUN mkdir /home/code && \  
           cd /home/code && \
           git clone https://github.com/nikithapk/gitSample.git && \
		   cp -r /home/code/gitSample/* /var/www/html
#COPY src/ /var/www/html
EXPOSE 80
