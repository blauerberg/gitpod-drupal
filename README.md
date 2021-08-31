# gitpod-drupal
Start up the sandbox instance for Drupal on [gitpod.io](https://gitpod.io/).

|Drupal 9.x|[![Drupal 9.x](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/blauerberg/gitpod-drupal)|
|-|-|

## How to installation

This pod will automatically install Drupal and get you started right away.
It also includes the following modules to help debugging and code reading:
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

## How to use xdebug
This pod includes Xdebug extention and Theia settings so you can start debugging from Debug > Start Debugging(`F5`) on the Theia.

## License

[MIT](LICENSE)
