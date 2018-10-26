<?php
    session_start();
    require 'config.php';

    if(!empty($_GET['codigo'])) {
        $codigo_convite = addslashes($_GET['codigo']);
        $sql = "SELECT * FROM usuarios WHERE codigo = '$codigo_convite'";
        $sql = $pdo->query($sql);
        
        if($sql->rowCount() == 0) {
            header("Location: login.php");
            exit;
        }else {
            $convites = '';
            $sql = "SELECT convites FROM usuarios WHERE codigo = '$codigo_convite'";
            $sql = $pdo->query($sql);
            $info = $sql->fetch();
            $convites = $info['convites'];
            echo "Convites restantes: ".$convites;
            if($convites == 0){
                echo "<h3 style='color:red';>Usuário não possui mais convites</h3>";
            }
        }
    } else {
        header("Location: login.php");
        exit;
    }

    if(!empty($_POST['email'])) {
        $email = addslashes($_POST['email']);
        $senha = md5($_POST['senha']);

        $sql = "SELECT * FROM usuarios WHERE email = '$email'";
        $sql = $pdo->query($sql);

        if($sql->rowCount() <= 0 && $convites > 0) {
            $codigo = md5(rand(0,99999).rand(0,99999));
            $sql = "INSERT INTO usuarios (email, senha, codigo, convites) VALUES ('$email', '$senha', '$codigo', 5); UPDATE usuarios SET convites = convites - 1 WHERE codigo = '$codigo_convite';";
            $sql = $pdo->query($sql);

            unset($_SESSION['logado']);

            header("Location: index.php");
            exit;
        }
    }
?>
<h3>Cadastrar</h3>

<form method="POST">
    E-mail:<br/>
    <input type="email" name="email"><br/><br/>

    Senha:<br/>
    <input type="password" name="senha"><br/><br/>

    <input type="submit" value="Cadastrar"><br/>
</form>