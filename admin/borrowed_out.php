<?php
    
    if(isset($_GET['book_id']) && isset($_GET['borrowed_out'])){
        $bo = $_GET['borrowed_out'];
        $book_id = $_GET['book_id'];
        include('./inc/conn.php');
        if($bo == '0'){
            $sql_borrowed_out = "UPDATE books SET borrowed_out = '1' WHERE id = '".$book_id."'";
            $query_borrowed_out = mysqli_query($conn, $sql_borrowed_out);
        }elseif($bo == '1'){
            $sql_borrowed_out = "UPDATE books SET borrowed_out = '0' WHERE id = '".$book_id."'";
            $query_borrowed_out = mysqli_query($conn, $sql_borrowed_out);
        }
        if(isset($_GET['search_query'])){
            header("location: search_results.php?search_query=".$_GET['search_query']);
        }else{
            header("location: all_books.php");
        }
    }else{
        header("location: index.php");
    }
?>