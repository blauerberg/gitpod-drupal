FROM gitpod/workspace-full

USER gitpod

# Debugging PHP in Gitpod
# https://www.gitpod.io/docs/languages/php/
RUN sudo apt-get -q update && \
     sudo apt-get install -yq pwgen && \
     sudo apt-get install -y php-dev && \
     sudo rm -rf /var/lib/apt/lists/*

RUN wget http://xdebug.org/files/xdebug-2.9.1.tgz \
    && tar -xvzf xdebug-2.9.1.tgz \
    && cd xdebug-2.9.1 \
    && phpize \
    && ./configure \
    && make \
    && sudo mkdir -p /usr/lib/php/20190902 \
    && sudo cp modules/xdebug.so /usr/lib/php/20190902 \
    && sudo bash -c "echo -e '\nzend_extension = /usr/lib/php/20190902/xdebug.so\n[XDebug]\nxdebug.remote_enable = 1\nxdebug.remote_autostart = 1\n' >> /etc/php/7.4/cli/php.ini"
