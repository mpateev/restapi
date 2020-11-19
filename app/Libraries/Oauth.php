<?php
namespace App\Libraries;

use OAuth2\GrantType\UserCredentials;
use OAuth2\Server;
//use App\Libraries\UserStorage;

//use \OAuth2\Storage\Pdo;

class Oauth {
  var $server;

  function __construct() {
    $this->init();
  }

  public function init()
  {
    $dsn = getenv('database.default.DSN');
    $username = getenv('database.default.username');
    $password = getenv('database.default.password');

    $storage = new UserStorage(['dsn' => $dsn, 'username' => $username, 'password' => $password]);
    $this->server = new Server($storage);
    $this->server->addGrantType(new UserCredentials($storage));
  }
}