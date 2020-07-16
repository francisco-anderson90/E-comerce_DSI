<?php
include('conexao.php');
?>
<!doctype html>

<html lang="pt-br">


<title>Área Admin</title>

<?php include 'header.php'; ?>

<?php include 'navbar_logado.php'; ?>
<body>

    <div class="container-fluid">
        <div class="row" style="margin-top:30px">
            <div class="col-12 d-flex justify-content-center flex-wrap">
                        <div class="card">
                            <div class="card-body">
                                <a class="btn btn-dark d-none d-sm-block" href="cadfunc.php" role="button" >CADASTRAR FUNCIONÁRIO</a>
                                <a class="btn btn-dark d-none d-sm-block" href="cadastroprod.php" role="button" style="margin-top:30px">CADASTRAR PRODUTO</a>
                            </div>
                        </div>
            </div>
        </div>
    </div>    
</body>

<?php include 'footer.php'; ?>