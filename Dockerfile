FROM httpd:2.4
RUN mkdir /usr/local/apache2/conf/include/ &&  echo 'Include conf/include/*.conf ' >> /usr/local/apache2/conf/httpd.conf
COPY ./my-httpd.conf   /usr/local/apache2/conf/include/
COPY ./index.html ./image.png /usr/local/apache2/htdocs/
