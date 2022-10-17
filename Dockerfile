FROM ubuntu:22.04
RUN apt-get update
RUN apt-get install -y vim
RUN apt-get install -y curl
RUN apt-get install -y git
RUN apt-get install -y fortune
RUN apt-get install -y man
RUN apt-get install -y nginx
RUN groupadd -g 1000 grader
RUN useradd -u 1000 -g grader grader
EXPOSE 5555
#RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
ADD content /var/www/html
ADD config /etc/nginx/sites-enabled
VOLUME /var/log/nginx/log
RUN chown -R grader:grader /var/www/html
RUN chown -R grader:grader /var/log/nginx
RUN chown -R grader:grader /run
RUN chown -R grader:grader /var/lib/nginx
RUN chown -R grader:grader /etc/nginx
USER grader
STOPSIGNAL SIGTERM
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
