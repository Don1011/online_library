<?php include("./inc/header.php")?>

    <div class="header">
        
        <div class = "container">
            <div class="row"><h1> <a href="index.php" class = "top_header"> Online Library</a></h1></div>
        </div>
    
        <div class = "container-fluid">
            <form action="search_results.php" method = "GET" class = "homepage_search_form margin_top_15p">
                <input type="text" placeholder = "Search for Books on the library" name = "search_query">
                <button class = "fa fa-search"></button>
            </form>
        </div>
    </div>
    <div class = "container">
        <?php
            include("inc/conn.php");

            $sql_get_department_details = "SELECT * FROM departments";
            $query_get_department_details = mysqli_query($conn, $sql_get_department_details);
            
            while($get_department_details = mysqli_fetch_assoc($query_get_department_details)):
        ?>
        <div class="caplet">
            <a href="department_specific_books.php?department_id=<?php echo $get_department_details['id']?>">
                <div class="caplet_number">
                    <?php 
                        $sql_book_count = "SELECT * FROM books WHERE department_id = '".$get_department_details['id']."'";
                        $query_book_count = mysqli_query($conn, $sql_book_count);
                        echo mysqli_num_rows($query_book_count);
                    ?>
                </div>
                <div class="caplet_tag">
                    <?php echo $get_department_details['name']?>
                </div>
            </a>
        </div>
        <?php
            endwhile;
        ?>
    </div>
<?php include("./inc/footer.php")?>
