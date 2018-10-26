<?php
    try {
        $pdo = new PDO("mysql:dbname=php_registroporconvite; host=localhost", "root", "");
    } catch(PDOException $e) {
        echo "ERRO: ".$e->getMessage();
        exit;
    }
?>