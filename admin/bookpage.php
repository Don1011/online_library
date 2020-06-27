<?php include("./inc/header.php")?>
<?php include("./inc/header2.php")?>

<div class="whole_body">
    <div class="container">
        <div class = "row">
            <div class="dept_specific_books_head">
                <div >
                    <?php 

                        include("inc/conn.php");
                        if(!isset($_GET['book_id'])){
                            header("location: index.php");
                        }else{
                            $book_id = $_GET['book_id'];
                            $sql_get_book_data = "SELECT * FROM books WHERE id = '".$book_id."'";
                            $sql_query_book_data = mysqli_query($conn, $sql_get_book_data);
                            $sql_fetch_book_data = mysqli_fetch_assoc($sql_query_book_data);

                            echo $sql_fetch_book_data['name'];
                        }            
                    ?>
                </div>
                <hr>
            </div>
            <div class="dept_specific_books_body">
                <div class="book_page_body">
                    <!-- <a class="btn btn-primary" href = "<?php //echo $sql_fetch_book_data['path']?>">
                        Click here to have the book <?php //echo "'".$sql_fetch_book_data['name']."' by '".$sql_fetch_book_data['author']."'"?> downloaded to your device.
                    </a> -->
                    
                    <?php 
                        $sql_get_search_result_department = "SELECT * FROM departments WHERE id = '".$sql_fetch_book_data['department_id']."'";
                        $query_search_result_department = mysqli_query($conn, $sql_get_search_result_department);
                        $fetch_search_result_department = mysqli_fetch_assoc($query_search_result_department);
                        echo "Book Written for: <p class = 'text-primary'><b>".$fetch_search_result_department['name']."</b></p> ";
                    ?>
                    Author's Name: <?php echo "<p class = 'text-primary'><b>".$sql_fetch_book_data['author']."</b></p>"?>
                    Publication Year: <?php echo "<p class = 'text-primary'><b>".$sql_fetch_book_data['publication_year']."</b></p>"?>
                    ISBN: <?php echo "<p class = 'text-primary'><b>".$sql_fetch_book_data['books_isbn']."</b></p>"?>
                    Shelf Number: <?php echo "<p class = 'text-primary'><b>".$sql_fetch_book_data['shelf_number']."</b></p>"?>
                    <?php
                        if($sql_fetch_book_data['borrowed_out'] == '0'){
                            echo "<p class = 'text-primary'><b>This book is available at the library right now</b></p>";
                        }else{
                            echo "<p class = 'text-danger'><b>This book has been borrowed out</b></p>";
                        }
                    ?>
                </div>
                <hr>
                <div>
                    <h3 class = 'text-primary'>Other books for <?php echo $fetch_search_result_department['name']?>:</h3>
                    <?php 
                        $sql_same_department_books = "SELECT * FROM books WHERE department_id = '".$fetch_search_result_department['id']."'";
                        $query_same_department_books = mysqli_query($conn, $sql_same_department_books);
                        $number_of_same_department_books_rows = mysqli_num_rows($query_same_department_books);

                        if($number_of_same_department_books_rows <= 1 ):
                            echo "<div class = 'text-danger'>Sorry, this seems to be the only book uploaded for this department.</div>";
                        else: 
                            while($fetch_same_department_books = mysqli_fetch_assoc($query_same_department_books)):
                                if($fetch_same_department_books['id'] != $book_id):
                    ?>
                                <a href = "bookpage.php?book_id=<?php echo $fetch_same_department_books['id'] ?>" class = "suggested_book_box book_page_links">
                                    <div>
                                        <?php echo $fetch_same_department_books['name']?>
                                    </div>
                                    <div>
                                        <?php echo "By ".$fetch_same_department_books['author']?>
                                    </div>
                                </a>
                    <?php 
                                endif;
                            endwhile;
                        endif;
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include("./inc/footer.php")?>