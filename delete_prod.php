<?php
   include "conexao.php";

        $codigo = $_POST["codigo"];

   $stmt = $conexao->prepare("DELETE FROM `loja`.`arquivo` WHERE `arquivo`.`codigo` = '$codigo' ");
   
   $stmt->execute();
   
   header("location:produto_vendido.php"); 
   
         
?>