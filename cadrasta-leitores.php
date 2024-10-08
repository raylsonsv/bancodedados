  <?php
 // inclui o arquivo de configuração (conexão com banco de dados)
 include"config.php";
 // Verifica se a conexão com o banco de dados foi bem-sucedida
 if (!$conn){
   // Se a conexão falhar, exibe uma mensagem de erro e encerra a execução
    die("Falha na conexão: " . mysqli_connect_error());
 }


 //receba os dados do formulário
 $nome = '';
 $datanasc = '';
 $celular = '';
 $email = '';
 $ra = '';
 $endereco = '';
 $num_end = '';
 $bairro = '';
 $cidade = '';

 // criar variáveis para inserir o resistro
 $sql ="INSERT INTO `leitores`
 (, `Nome`, `DtNasc`, `Celular`, `Email`, `RA`, `Endereco`, `NumEnd`, `Bairro`, 
 `CidadeUF`) VALUES 
('$nome','$dtnasc','$celular','$email','$ra','$endereco','$num_end','$bairro',
'$cidade')";

// Executa a consulta SQL. falhar, exibe o erro do banco de dados
$query = mysqli_query(mysql: $conn,query: $sql) or
die(mysqli_error(mysql: $db));

 
  ?>
