<!doctype html>

<html lang="pt-br">

<?php include 'header.php'; ?>
<?php include 'navbar_logado.php'; ?>
<?php
include('verifica_login.php');
?>
<?php
    include 'conexao.php'
?>



<article>

    <div class="text-center">
    <h2>Ola <?php echo $_SESSION['email'];?> seja bem vindo!!!</h2>
    <h2><a href="logout.php"></a></h2>

        <!-- my-5 para criar margem em cima e embaixo; mt-5 cria apenas margem no topo -->

        <div class="container" style="margin-top:30px">

            <div class="col-sm-12 text">

                <!-- Slide de Produtos -->                
                
                <div class="row" style="margin-left:500px ">
                
                <h1>Ofertas</h1>
                    
                </div>

                <!-- Primeira linha de Cards de Procutos - 4 Produtos -->
                <form action="deleta_produto.php" method="POST">
                <div class="row" style="margin-left:400px">
                    <!-- <form action="deleta_produto.php" method="POST">                   -->
                    <?php   

                            $buscaDadosArquivo = mysqli_query($conexao, "SELECT codigo, arquivo, data FROM arquivo");  

                            while($dadosArquivo = mysqli_fetch_object($buscaDadosArquivo)):  
                                                

                            $img = "upload/$dadosArquivo->arquivo";   
                                                
                            echo "
                                <div class='row' style='margin-top:30px'>
                                        <div class='col-sm-6'>
                                            
                                            <input  type='text' name='codigo' value='$dadosArquivo->codigo'./>
                                        
                                            <div class='card'>
                                             <img class='card-img-top' src='$img' alt='$dadosArquivo->arquivo'>
                                             <div class='card-body'>
                                            
                                                <p>
                                                    <input type='submit' value='Comprar'/>
                                                </p>
                                     
                                             
                                             </div>
                                            </div>     
                                        </div>                    
                                                       
                                </div>";   

                    endwhile;
                    ?>
                
                </div>
                </form>
                

                    
                        
                    </div>

                </div>

            </div>


        </div>

    </div>

</article>

<?php include 'footer.php'; ?>