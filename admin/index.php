<?php include("./inc/header.php")?>
<?php include("./inc/header2.php")?>

<div class="container">
    <div class="dept_specific_books_head">
        <div >
            Know what your users are searching for
        </div>
        <hr>
    </div>
    <div class = "dept_specific_books_body">
        <?php
            include("./inc/conn.php");
            $sql_fetch_queries = "SELECT * FROM search_queries ORDER BY id DESC";
            $query_fetch_queries = mysqli_query($conn, $sql_fetch_queries);
            while($fetch_queries = mysqli_fetch_assoc($query_fetch_queries)):
            $border_colour;
                if($fetch_queries['num_of_rows'] <= 0){
                    $border_colour = "#ff6555";
                }else{
                    $border_colour = "rgba(0, 123, 255, 0.356)";
                }
        ?>
        <div class = "search_query_list row" style = "box-shadow: 0 0 0 0.2rem <?php echo $border_colour?>; border: 1px solid #ced4da;">
            <div class="col-md-8">
                <?php
                    echo $fetch_queries['query'];
                ?>
            </div>
            <div class="col-md-4">
                <?php
                    echo $fetch_queries['search_date'];
                ?>
            </div>
        </div>
        <?php
            endwhile;
        ?>
    </div>
</div>