FROM docker.io/library/nextcloud:21.0.1-apache
COPY entrypoint/entrypoint.sh /
COPY console/console.php /usr/src/nextcloud/
COPY cron/cron.php /usr/src/nextcloud/
ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]
