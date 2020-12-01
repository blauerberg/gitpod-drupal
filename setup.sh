#/bin/sh

composer global require hirak/prestissimo
composer install
gp env drupal_passwd="$(pwgen -c -n -y -s 12 1)"

vendor/bin/drush -y site:install \
  standard \
  --site-name="gitpod-drupal"
  --account-name="admin" \
  --account-pass="$(gp env|grep drupal_passwd|cut -c15-)" \
  --db-url=sqlite://sites/default/files/.ht.sqlite
