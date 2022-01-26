#/bin/sh
set -e

# Create new drupal core code tree
mkdir drupal
composer -n create-project drupal/recommended-project:${DRUPAL_CORE_VERSION} drupal
cd drupal

# Add essential contirbute modules
composer -n require drush/drush:^10
composer -n require drupal/devel
composer -n require drupal/twig_debugger
composer -n require drupal/admin_toolbar
composer -n require drupal/coder
composer -n install

# Setup the phpcs standard
vendor/bin/phpcs --config-set installed_paths $(realpath vendor/drupal/coder/coder_sniffer/)
vendor/bin/phpcs --config-set default_standard Drupal,DrupalPractice

# Install Drupal
vendor/bin/drush -y site:install \
  standard \
  --site-name="gitpod-drupal" \
  --account-name="admin" \
  --account-pass="$(openssl rand -base64 16)" \
  --db-url=sqlite://sites/default/files/.ht.sqlite
