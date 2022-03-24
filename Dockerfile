FROM wyveo/nginx-php-fpm:php81

# Supervisor config
COPY ./supervisord.conf /etc/supervisord.conf

# Override nginx's default config
COPY ./default.conf /etc/nginx/conf.d/default.conf

# Override default nginx welcome page
COPY html /usr/share/nginx/html

EXPOSE 8080

CMD ["/start.sh"]
