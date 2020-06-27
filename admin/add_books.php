<?php include("./inc/header.php")?>
<?php include("./inc/header2.php")?>
<?php include("./inc/conn.php")?>
<div class="">
    <div class="container">
        <div class = "row">
            <?php
                if(isset($_POST['form_submitted'])){
                    if(isset($_FILES["book_photo"])){
                        // File upload
                        // Storing all the submission data in variables
                        $book_photo  = $_FILES['book_photo'];
                        $book_name  = $_POST["name"];
                        $author  = $_POST["author_name"];
                        $pub_year  = $_POST["pub_year"];
                        $book_isbn  = $_POST["book_isbn"];
                        $book_dept  = $_POST["book_dept"];
                        $shelf_num  = $_POST["shelf_num"];

                        $admin_id = $_SESSION['admin_id'];
                        $borrowed_out = 0;
                        $date = date('d-m-Y');

                        //Getting the  file extension
                        $file_name_array = explode('.', $book_photo['name']);
                        $file_extension = strtolower(end($file_name_array));
                        //Checking if what is being uploaded is an actual image.
                        $allowed_extensions = array('jpg', 'png', 'jpeg');
                        if(in_array($file_extension, $allowed_extensions)){
                            if($book_photo['error'] === 0){
                                $file_new_name = uniqid($file_name_array[0], true).'.'.$file_extension;
                                $file_destination = './books_pictures/'.$file_new_name;

                                //Send the file to the new directory
                                if(move_uploaded_file($book_photo['tmp_name'], '.'.$file_destination)){
                                   
                                    $sql_upload_book_data = "INSERT INTO `books` (`image_url`, `name`, `author`, `publication_year`, `books_isbn`, `shelf_number`, `department_id`, `admin_id`, `borrowed_out`, `date`) 
                                                                        VALUES('".$file_destination."', '".$book_name."', '".$author."', '".$pub_year."', '".$book_isbn."', '".$shelf_num."', '".$book_dept."', '".$admin_id."', '".$borrowed_out."', '".$date."')";
                                    $query_upload_book_data = mysqli_query($conn, $sql_upload_book_data);
                                    echo "<div style = 'text-align: center;'><h3 class = 'text-success'>Book Added</h3></div>";
                                }else{
                                    echo "<div style = 'text-align: center;'><h3 class = 'text-danger'>Error uploading file</h3></div>";
                                }
                            }else{
                                echo "<div style = 'text-align: center;'><h3 class = 'text-danger'>Error uploading file</h3></div>";
                            }
                        }else{
                            echo "<div style = 'text-align: center;'><h3 class = 'text-danger'>Please, only attempt uploading images of extension 'jpg', 'jpeg', 'png'</h3></div>";    
                        }
                    }else{
                        echo "<div style = 'text-align: center;'><h3 class = 'text-danger'>Please fill the form completely before submitting</h3></div>";
                    }
                }
            ?>
            <form action="add_books.php" class = "add_books_form" method = "POST" enctype = "multipart/form-data">
                <input type="file" name = "book_photo" class = "custom_input_control" placeholder = "Select Book's Picture"/>
                <input type="text" name = "name" class = "custom_input_control" placeholder = "Enter Book Name"/>
                <input type="text" name = "author_name" class = "custom_input_control" placeholder = "Enter Author's Full Name"/>
                <input type="text" name = "pub_year" class = "custom_input_control" placeholder = "Enter Publication Year"/>
                <input type="text" name = "book_isbn" class = "custom_input_control" placeholder = "Enter Book's ISBN"/>
                <!-- <input type="text" name = "book_dept" class = "custom_input_control" placeholder = "Enter Book's Department"/> -->
                <select class = "custom_input_control" name = "book_dept">
                    <option value = "">Select Department</option>
                    <?php
                        $sql_depts = "SELECT * FROM departments";
                        $query_depts = mysqli_query($conn, $sql_depts);
                        while($fetch_depts = mysqli_fetch_assoc($query_depts)):
                    ?>
                    <option value = "<?php echo $fetch_depts['id']?>"><?php echo $fetch_depts['name']?></option>
                    <?php 
                        endwhile;
                    ?>
                </select>
                <input type="text" name = "shelf_num" class = "custom_input_control" placeholder = "Enter Shelf Number"/>
                <div class= "text-center margin_top_5p">
                    <button class="btn btn-primary" name = "form_submitted"><span class="fa fa-plus"></span> Add</button>
                </div>
            </form>
        </div>
    </div>
</div>

<?php include("./inc/footer.php")?>