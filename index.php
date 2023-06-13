<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <title>Таблица заявок</title>
</head>
<body style="margin: 50px;">
  <h1>Лист сообщений</h1>
  <a class="nav-link" href="index2.html">Главная</a>
  <br>
  <table class="table">
    <thead>
      <tr>
        <th>ID</th>
        <th>name</th>
        <th>emails</th>
        <th>telefon</th>
        <th>comment</th>
      </tr>
    </thead>
    <tbody>
      <?php

 

      $mysql = new mysqli('localhost', 'root', '', 'registr');

      

      if ($mysql ->connect_error){
        die("Подключение неудачное: " . $mysql->connect_error);
      }

      if (isset($_GET['del'])){
        $id = $_GET['del'];
        $query = "DELETE FROM svazac WHERE id=$id";

        mysqli_query($mysql, $query) or die(mysqli_error($mysql));
      }

      
    

      $sql = "SELECT * FROM svazac ('name', 'emails', 'telefon', 'soob') VALUES ('$name', '$emails', '$telefon', '$soob')";
      $result = $mysql->query("SELECT * FROM svazac");




      if (!$result){
        die("Invalid query: " . $mysql->connect_error);
      }

      while($row = $result->fetch_assoc()) {
        echo "<tr>
        <td>". $row["id"] ."</td>
        <td>". $row["name"] ."</td>
        <td>". $row["emails"] ."</td>
        <td>". $row["telefon"] ."</td>
        <td>". $row["soob"] ."</td>
        <td>
          <a class='btn btn-primary btn-sm' href='?upd=". $row["id"] ."'>Update</a>
          <a class='btn btn-danger btn-sm' href='?del=". $row["id"] ."'>Delete</a>
        </td>
    </tr>";
      }
      
        ?>
    </tbody>
  </table>
  
</body>
</html>
