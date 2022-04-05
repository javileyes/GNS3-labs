FROM xfce

RUN apt install -y nginx
RUN echo \
"#! /bin/bash \n\
if [ \$NGINX_INIT = 'YES' ]; then \n\
     service nginx start \n\
fi \n " > /usr/local/bin/start2 && \
tail -n+2 /usr/local/bin/start >> /usr/local/bin/start2 && \
chmod +x /usr/local/bin/start2

CMD start2

