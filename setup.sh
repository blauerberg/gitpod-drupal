#/bin/sh

composer global require hirak/prestissimo
composer install

vendor/bin/drush -y site:install \
  standard \
  --site-name="gitpod-drupal"
  --account-name="admin" \
  --account-pass="$(pwgen -c -n -y -s 12 1)" \
  --db-url=sqlite://sites/default/files/.ht.sqlite
