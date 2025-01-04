FROM mukeshjadav7696/centwebsrv:6
MAINTAINER Mukesh S Jadav <mukeshjadav7696@gmail.com>
LABEL Name="Mukesh Jadav"
LABEL EmailId="mukeshjadav7696@gmail.com"
#RUN service httpd start
WORKDIR /var/www/html/
ADD https://www.free-css.com/assets/files/free-css-templates/download/page287/cycle.zip  .
RUN unzip cycle
RUN cp -rvp html/* .
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
