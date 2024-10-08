 <?php
 // inclui o arquivo de configuração (conexão com banco de dados)
 include"config.php";
 // Verifica se a conexão com o banco de dados foi bem-sucedida
 if (!$conn){
   // Se a conexão falhar, exibe uma mensagem de erro e encerra a execução
    die("Falha na conexão: " . mysqli_connect_error());
 }


 //receba os dados do formulário
 $nome = 'Teste Nome';
 $dtnasc = '2001-10-20';
 $celular = '(81) 99999-9999';
 $email = 'teste@teste.com';
 $ra = '1111111';
 $endereco = 'Rua Teste';
 $num_end = '99';
 $bairro = 'Janga';
 $cidade = 'Paulista/PE';

 // criar variáveis para inserir o resistro
 $sql ="INSERT INTO `leitores`
 (`Nome`, `DtNasc`, `Celular`, `Email`, `RA`, `Endereco`, `NumEnd`, `Bairro`, 
 `CidadeUF`) VALUES 
('$nome','$dtnasc','$celular','$email','$ra','$endereco','$num_end','$bairro',
'$cidade')";

// Executa a consulta SQL. falhar, exibe o erro do banco de dados
$query = mysqli_query(mysql: $conn,query: $sql) or
die(mysqli_error(mysql: $conn));

if($query){
     echo "<center>";
     echo "Cadrasto realizado com sucesso!! <br>";
     echo "<a href='index.php'><button title='Home pago'>Voltar<button></a>";
     echo "</center>";
} else {
  echo "<center>";
  echo "<a href='index.php'><button title='Home pago'>Voltar<button></a>";
  echo "</center>";
}
  ?>      
  