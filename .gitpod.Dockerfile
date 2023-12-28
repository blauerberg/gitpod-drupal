FROM gitpod/workspace-full

USER gitpod

# Debugging PHP in Gitpod
# https://www.gitpod.io/docs/languages/php/
RUN sudo install-packages php-xdebug
