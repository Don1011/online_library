<?php include("./inc/header.php")?>
<?php include("./inc/header2.php")?>

<div class="whole_body">
    <div class="container">
        <div class = "row">
            <div class="dept_specific_books_head">
                <div >
                    <?php 

                        include("inc/conn.php");
                        if(!isset($_GET['department_id'])){
                            header("location: index.php");
                        }else{
                            $dept_id = $_GET['department_id'];
                            $sql_get_department_name = "SELECT name FROM departments WHERE id = '".$dept_id."'";
                            $query_get_department_name = mysqli_query($conn, $sql_get_department_name);
                            $fetch_department_name = mysqli_fetch_assoc($query_get_department_name);
                            echo $fetch_department_name['name'];
                        }                                        
                    ?>
                </div>
                <hr>
            </div>
            <div class="dept_specific_books_body">
                <?php
                    $sql_fetch_books = "SELECT * FROM books WHERE department_id = '".$dept_id."'";
                    $query_fetch_books = mysqli_query($conn, $sql_fetch_books);
                    $number_of_books = mysqli_num_rows($query_fetch_books);

                    if($number_of_books <= 0): 
                        echo "<div style = 'text-align: center;'><h3 class = 'text-danger'>Sorry, there hasn't been any book uploaded for this department.</h3></div>";
                    else:
                        while($fetch_books = mysqli_fetch_assoc($query_fetch_books)):

                    /*I didn't write code to implement pagination, but i will in the future.*/
                ?>
                    <a href="bookpage.php?book_id=<?php echo $fetch_books['id']?>" class = "book_page_links">
                        <div class = "book_data_row row">
                                <div class="col-md-6">
                                    <?php echo $fetch_books['name']?>
                                </div>
                                <div class="col-md-6">
                                    <?php echo "by ".$fetch_books['author']?>
                                </div>
                        </div>
                    </a>                
                <?php
                        endwhile;
                    endif;
                ?>
            </div>
        </div>
    </div>

</div>

<?php include("./inc/footer.php")?>