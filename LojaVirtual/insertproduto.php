<?php
        include "conexao.php";

        $titulo = $_POST["titulo"];
        $preco = $_POST["preco"];
        $descricao = $_POST["descricao"];

        $stmt = $conexao->prepare("INSERT INTO produto (Titulo, Valor, Descricao) values ('$titulo','$preco', '$descricao')");

        $stmt->execute();

        header("location:areaadmin.php");
?>