FROM gitpod/workspace-full

USER gitpod

# Debugging PHP in Gitpod
# https://www.gitpod.io/docs/languages/php/
RUN sudo apt-get -q update && \
     sudo apt-get install -y php-dev && \
     sudo apt-get purge -y composer && \
     sudo rm -rf /var/lib/apt/lists/*

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --quiet \
    && sudo mv composer.phar /usr/local/bin/composer \
    && rm -f composer-setup.php

RUN wget https://xdebug.org/files/xdebug-3.0.4.tgz \
    && tar -xvzf xdebug-3.0.4.tgz \
    && cd xdebug-3.0.4 \
    && phpize \
    && ./configure \
    && make \
    && sudo mkdir -p /usr/lib/php/20190902 \
    && sudo cp modules/xdebug.so /usr/lib/php/20190902 \
    && sudo bash -c "echo -e '\nzend_extension = /usr/lib/php/20190902/xdebug.so\n[XDebug]\nxdebug.mode = off\nxdebug.start_with_request = yes\nxdebug.discover_client_host = 1\n' >> /etc/php/8.0/cli/php.ini"
