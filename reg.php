<?php include "assets/header.html";?>
<div class = "container">
        <h1 class="ref">Регистрация</h1><br>
        <form method="POST">
        <div class="form">
            <label for ='Name'>Name </label><br>
                <input type="text" name='name' id="name"><br>
            <label for ='lastname'>Last name </label><br>
                <input type="text" name='lastname' id="lastname"><br>
            <label for ='login'>Email </label><br>
                <input type="text" name="login" id="login"><br>
            <label for ='password'>Password </label><br>
                <input type="password" name="password" id="password"><br>
                <div class="input-btn input-group">
                <button type="submit" class="btn" name="button">Send</button>
                </div><br>
        </div>
</div>
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