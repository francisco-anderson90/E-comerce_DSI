<?php
define('USUARIO', 'root');
define('HOST', 'localhost');
define('SENHA', 'usbw');
define('DB', 'lojavirtual');

$conexao = mysqli_connect(HOST, USUARIO, SENHA, DB) or die ('Não foi possível conectar');

//class Conexao{

    //private static $pdo;

    //private function __construct(){}

    //public static function getConexao(){

        //if (!self::$pdo){

            //switch (SGBD) {
                //case 'mysql':

                    //self::$pdo = new PDO('mysql:host='.SERVER.';dbname='.DATABASE, USER, PASSWORD);

                  //  break;
                
                // case 'pgsql';

                // break;

           // default;

              //  echo 'SGDB não informado';
             //    break;
           // }

       // }
//
       // return self::$pdo;
  //  }
//}





