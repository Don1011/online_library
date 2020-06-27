<?php include("./inc/header.php")?>
<?php include("./inc/header2.php")?>

<div class="whole_body">
    <div class="container">
        <div class = "row">
            <div class="dept_specific_books_head">
                <div >
                    <?php 

                        include("inc/conn.php");
                        if(!isset($_GET['search_query'])){
                            header("location: index.php");
                        }else{
                            echo "Search Results";
                        }            
                    ?>
                </div>
                <hr>
            </div>
            <div class="dept_specific_books_body">
                <?php
                    $search_query = $_GET['search_query'];
                    

                    //To search for the query...
                    $sql_get_search_result_rows = "SELECT * FROM books WHERE name LIKE '%".$search_query."%' OR author LIKE '%".$search_query."%' OR books_isbn LIKE '%".$search_query."%'";
                    $query_get_search_result_rows = mysqli_query($conn, $sql_get_search_result_rows);
                    
                    $number_search_result_rows = mysqli_num_rows($query_get_search_result_rows);


                    //To insert the search query into the search query table so the admin can know what the users
                    //are searching for...
                    $date = date('d-m-Y');
                    $sql_insert_query = "INSERT INTO search_queries(query, search_date, num_of_rows) VALUES('".$search_query."', '".$date."', '".$number_search_result_rows."')";
                    $query_insert_query = mysqli_query($conn, $sql_insert_query);


                    if($number_search_result_rows <= 0): 
                        echo "<div style = 'text-align: center;'><h3 class = 'text-danger'>Sorry, no books matches your search.</h3></div>";
                    else:
                        while($fetch_search_result_rows = mysqli_fetch_assoc($query_get_search_result_rows)):
  
                    /*I didn't write code to implement pagination, but i will... In the future.*/
                ?>
                    <a href="bookpage.php?book_id=<?php echo $fetch_search_result_rows['id']?>" class = "book_page_links">
                        <div class = "book_data_row row">
                                <div class="col-md-4">
                                    <?php echo $fetch_search_result_rows['name']?>
                                </div>
                                <div class="col-md-4">
                                    <?php echo "by ".$fetch_search_result_rows['author']?>
                                </div>
                                <div class="col-md-4">
                                    <?php

                                        $sql_get_search_result_department = "SELECT * FROM departments WHERE id = '".$fetch_search_result_rows['department_id']."'";
                                        $query_search_result_department = mysqli_query($conn, $sql_get_search_result_department);
                                        $fetch_search_result_department = mysqli_fetch_assoc($query_search_result_department);
                                        echo "written for ".$fetch_search_result_department['name'];
                                        
                                    ?>
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