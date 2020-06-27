<?php 
    session_start();
?>
<!DOCTYPE HTML>
<html>
    <head>
        <title>search system</title>
        <link rel="stylesheet" href="assets/css/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/bootstrap/css/bootstrap-reboot.css">
        <link rel="stylesheet" href="assets/css/bootstrap/css/bootstrap-grid.css">
        <link rel="stylesheet" href="assets/css/custom.css">
        <link rel="stylesheet" href="assets/css/fontawesome/css/all.css">

        <!-- <script type = "text/JavaScript" src = "./assets/js/script.js"></script> -->
    </head>
    <body>
        <?php
            $sn = explode('/', $_SERVER['SCRIPT_NAME']);
            $page_name = end($sn);
            if($page_name != "login.php"){
                if(!isset($_SESSION['admin_id'])){
                    header('location: login.php');
                }
            }
        ?>