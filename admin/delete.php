<?php
    
    if(isset($_GET['book_id'])){
        include('./inc/conn.php');
        $book_id = $_GET['book_id'];
        $sql_delete = "DELETE FROM books WHERE id = '".$book_id."'";
        $query_delete = mysqli_query($conn, $sql_delete);
        if(isset($_GET['search_query'])){
            header("location: search_results.php?search_query=".$_GET['search_query']);
        }else{
            header("location: all_books.php");
        }
    }else{
        header("location: index.php");
    }
?>