<?php

define ('SGBD', 'mysql');
define('DATABASE', 'lojavirtual');
define('USER', 'root');
define('PASSWORD', 'usbw');
define('SERVER', 'localhost');

class Conexao{

    private static $pdo;

    private function __construct(){}

    public static function getConexao(){

        if (!self::$pdo){

            switch (SGBD) {
                case 'mysql':

                    self::$pdo = new PDO('mysql:host='.SERVER.';dbname='.DATABASE, USER, PASSWORD);

                    break;
                
                // case 'pgsql';

                // break;

            default;

                echo 'SGDB não informado';
                 break;
            }

        }

        return self::$pdo;
    }
}





