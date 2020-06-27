<?php include("./inc/header.php")?>
<?php include("./inc/header2.php")?>

<div class="">
    <div class="container">
            <div class="row">
                <form class = "homepage_search_form" method = "GET" action = "search_results.php">
                    <input name = "search_query" type = "text" placeholder = "What book are you searching for?" class = "col-11">
                    <button class = "fa fa-search search_submit_button col-1"></button>
                </form>
            </div>
        </div>
    <div class="container">
        <div class = "row">
            <div class="dept_specific_books_head">
                <div >
                    <?php 

                        include("inc/conn.php");
                        echo "All Books";
                        
                    ?>
                </div>
                <hr>
            </div>
            <div class="dept_specific_books_body">
                <?php                    

                    //To get all books...
                    $sql_get_books = "SELECT * FROM books ORDER BY id DESC";
                    $query_get_books = mysqli_query($conn, $sql_get_books);
                    
                    $number_of_books = mysqli_num_rows($query_get_books);

                    if($number_of_books <= 0): 
                        echo "<div style = 'text-align: center;'><h3 class = 'text-danger'>Sorry, no books in our database at the moment.</h3></div>";
                    else:
                        while($fetch_get_books = mysqli_fetch_assoc($query_get_books)):
  
                    /*I didn't write code to implement pagination, but i will... In the future... Maybe..*/
                ?>
                    <div class = "book_page_links">
                        <div class="row">
                            <div class = "book_data_row">
                            <div class="row">
                                    <div class="col-md-4">
                                        <?php echo $fetch_get_books['name']?>
                                    </div> 
                                    <div class="col-md-4">
                                        <?php echo "by ".$fetch_get_books['author']?>
                                    </div>
                                    <div class="col-md-4">
                                        <?php

                                            $sql_get_department = "SELECT name FROM departments WHERE id = '".$fetch_get_books['department_id']."'";
                                            $query_get_department = mysqli_query($conn, $sql_get_department);
                                            $fetch_get_department = mysqli_fetch_assoc($query_get_department);
                                            echo "written for ".$fetch_get_department['name'];
                                            
                                        ?>
                                    </div>
                                </div>
                                <div class="row text-center books_option">
                                    <div class="col-md-4 details">
                                        <a href="bookpage.php?book_id=<?php echo $fetch_get_books['id']?>">
                                            <span class="fa fa-eye"></span>&nbsp;View Details
                                        </a>
                                    </div> 
                                    <div class="col-md-4 delete">
                                        <a href="delete.php?book_id=<?php echo $fetch_get_books['id']?>">
                                            <span class="fa fa-trash"></span>&nbsp;Delete
                                        </a>
                                    </div> 
                                    <?php
                                        if($fetch_get_books['borrowed_out'] == '0'):
                                    ?>
                                        <div class="col-md-4 been_borrowed">
                                            <a href="borrowed_out.php?book_id=<?php echo $fetch_get_books['id']?>&borrowed_out=<?php echo $fetch_get_books['borrowed_out']?>">
                                                <span class="fa fa-ban"></span>&nbsp;Has Been Borrowed
                                            </a>
                                        </div>
                                    <?php
                                        elseif($fetch_get_books['borrowed_out'] == '1'):
                                    ?>
                                        <div class="col-md-4 not_been_borrowed">
                                            <a href="borrowed_out.php?book_id=<?php echo $fetch_get_books['id']?>&borrowed_out=<?php echo $fetch_get_books['borrowed_out']?>">
                                                <span class="fa fa-thumbs-up"></span>&nbsp;Its Available
                                            </a>
                                        </div>
                                    <?php
                                        endif;
                                    ?>
                                    
                                </div>
                                
                            </div>
                            
                        </div>
                    </div>                
                <?php
                        endwhile;
                    endif;
                ?>
            </div>
        </div>
    </div>
</div>

<?php include("./inc/footer.php")?>