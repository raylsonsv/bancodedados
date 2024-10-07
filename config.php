 <?php 

 
   // Configuração do banco de dados
   $db_host = "localhost"; // hostname do servidor de banco e dados
   $db_user = "root"; // Nome sw usuário para conectar ao banco de dados
   $db_pass = ""; // Senha para conectar ao banco de dados (vazio significa sem senha)
   $db_name = "biblioteca"; // Nome do banco de dados a conectar

   // Conectar ao banco de dados
   $conn = new mysqli($db_host, $db_user, $db_pass, $db_name);

   if ($conn->connect_error){
    //Se houver um erro, exibir a mensagem de erro e encerrar a execução de script
    //a seta -> é usada para acessar propriedades e métodos os objetivos em PHP, tornando o codigo mais legivel e fácil de manter
    die("Conexão falhou:" .$conn->connect_error);
   }
   else{
    echo "PARABÉNS!!! A conexão ao banco de dados ocorreu normalmente";
   }
    ;