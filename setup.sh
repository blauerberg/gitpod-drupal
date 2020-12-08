#/bin/sh

composer global require hirak/prestissimo
composer install

vendor/bin/drush -y site:install \
  standard \
  --site-name="gitpod-drupal" \
  --account-name="admin" \
  --account-pass="$(openssl rand -base64 16)" \
  --db-url=sqlite://sites/default/files/.ht.sqlite
