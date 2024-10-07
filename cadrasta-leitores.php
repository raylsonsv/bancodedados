 <?php
 include"config.php";
 if (!$conn){
    die("Falha na conexão{mysqli_connect_error()}");
 }
 //receba os dados do formulário
 $nome ='';
 $datanasc = '';
 $celular = '';
 $email = '';
 $ra = '';
 $endereco = '';
 $num_end = '';
 $bairro = '';
 $cidade = '';

 //criar variáveis para inserir o resistro
 $aql ="";
 
  ?>