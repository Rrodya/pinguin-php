<?php include "assets/header.html";?>
<div class = "container">
        <h1>логин</h1><br>
<form method="POST">
        
        
      


         <label for ='login'>Email </label><br>

        <input type="text" name="login" id="login"><br>
         <label for ='password'>Password </label><br>

        <input type="password" name="password" id="password"><br>
        <div class="input-btn input-group">
                <button type="submit" class="btn" name="button">Login</button>
                </div><br>

</div></div>
</form>
<?php
 $conn = mysqli_connect("localhost", "root", "", "collage-php","3306");

 $login = empty($_POST['login'])?false:$_POST['login'];
 $password = empty($_POST['password'])?false:$_POST['password'];
 if ($login and $password){
 $check = mysqli_query($conn, "SELECT count(*) FROM `users` where `login` = '$login' AND `password` = '$password' ");
}
if (mysqli_fetch_array($check)[0] == 1) 
echo ('☻☻☻☻☻');  
?>