# gitpod-drupal
Start up the sandbox instance for Drupal on gitpod.io.

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/blauerberg/gitpod-drupal)

## How to installation

This pod will automatically install Drupal and get you started right away.
It also includes the following modules to assist with debugging:
- [Drush](https://www.drupal.org/project/drush)
- [Devel](https://www.drupal.org/project/devel)
- [Twig VarDumper](https://www.drupal.org/project/twig_vardumper)
- [Twig Debugger](https://www.drupal.org/project/twig_debugger)
- [Admin Toolbar](https://www.drupal.org/project/admin_toolbar)

## How to login

This pod create an account below when initialized:
- username: `admin`
- password: `{generate with a random string}`

Please change password to following below instructions after spin up your gitpod instance:
- open new terminal(`` Ctrl+Shift+` ``) on the gitpod.io
- run `vendor/bin/drush upwd admin YOUR_FAVORITE_PASSWORD`

## How to add some modules
Of cource, you can add extra contribute modules or packages with below instructions:
- open new terminal( `Ctrl+Shift+` `) on the gitpod.io
- run `composer require foo/bar`

## License

[MIT](LICENSE)
