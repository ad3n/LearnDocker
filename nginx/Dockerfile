FROM nginx:latest
MAINTAINER Muhammad Surya Ihsanuddin<surya.kejawen@gmail.com>

# Setting Configurations
ENV DEBIAN_FRONTEND noninteractive

ADD sites-enabled/site.conf /etc/nginx/conf.d/default.conf
ADD sites-enabled/php-fpm.conf /etc/nginx/conf.d/php-fpm.conf
ADD nginx.conf /etc/nginx/nginx.conf
ADD fastcgi_cache /etc/nginx/fastcgi_cache
ADD static_files.conf /etc/nginx/static_files.conf
ADD logs/site.access.log /var/log/nginx/site.access.log
ADD logs/site.error.log /var/log/nginx/site.error.log
ADD etc/sysctl.conf /etc/sysctl.conf
ADD etc/security/limits.conf /etc/security/limits.conf

RUN chmod 777 /var/log/nginx/site.access.log
RUN chmod 777 /var/log/nginx/site.error.log
