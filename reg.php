<?php include "assets/header.html";?>
<div class = "container">
        <h1>Регистрация</h1><br>
<form method="POST">
        <div class="name">
        <label for ='Name'>Имя </label><br>

        <input type="text" name='name' id="name"><br>

        <label for ='lastname'>Фамилия </label><br>

        <input type="text" name='lastname' id="lastname"><br>

         <label for ='login'>мейл </label><br>

        <input type="text" name="login" id="login"><br>
         <label for ='password'>Пароль </label><br>

        <input type="password" name="password" id="password"><br>
         <label for ='button'>кнопка </label><br>

        <input type="submit" name="button"><br>

</div></div>
</form>
<?php
        $conn = mysqli_connect("localhost", "root", "", "collage-php","3306");
$login = $_POST['login'];
$password=$_POST['password'];
$name = $_POST['name'];
$lastName = $_POST['lastname'];
$result = mysqli_query($conn, "INSERT INTO users (`idUser`,`name`,`last-name`,`login`,`password`) VALUES (null,'$name','$lastName','$login','$password')");

  echo $result;
?>