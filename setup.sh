#/bin/sh
set -e

# Create new drupal core code tree
mkdir drupal
composer create-project drupal/recommended-project:${DRUPAL_CORE_VERSION} drupal
cd drupal

# Add essential contirbute modules
composer require drupal/devel
composer require drupal/twig_vardumper
composer require drupal/twig_debugger
composer require drupal/admin_toolbar
composer install

vendor/bin/drush -y site:install \
  standard \
  --site-name="gitpod-drupal" \
  --account-name="admin" \
  --account-pass="$(openssl rand -base64 16)" \
  --db-url=sqlite://sites/default/files/.ht.sqlite
