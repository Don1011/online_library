<?php include("./inc/header.php")?>

<div class="container-fluid" style = "background-image: url(./assets/images/books.jpg)">
    <div class="row">
            
            <form action="login.php" method = "POST" class = "login_form text-center">
                <?php
                    include("./inc/conn.php");
                    if(isset($_POST['email']) && isset($_POST['password'])){
                        $email = $_POST['email'];
                        $password = $_POST['password'];
                        $sql_login = "SELECT * FROM `admin` WHERE `email` = '$email'";
                        $query_login = mysqli_query($conn, $sql_login);
                        if(mysqli_num_rows($query_login) > 0){
                            $fetch_login = mysqli_fetch_assoc($query_login);
                            $_SESSION['admin_id'] = $fetch_login['id'];
                            header('location: index.php');
                        }else{
                            echo "<div style = 'text-align: center;'><h3 class = 'text-danger'>Incorrect email or password</h3></div>";
                        }
                        
                    } 
                   
                ?>
                <br>
                <br>
                <h2>Log in</h2>
                <input type="email" name = "email" placeholder = "Enter your email"/>
                <input type="password" name = "password" placeholder = "Enter your password"/>
                <div>
                    <button class = "btn btn-primary">Login</button>
                    <!-- <p>
                        <a href="#">Create an account</a>
                    </p> -->
                </div>
            </form>
    </div>
</div>

<?php include("./inc/footer.php")?>