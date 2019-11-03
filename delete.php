<?php
    include ("connection.php");

    $id = $_GET['id'];
    $name = $_GET['name'];

    $query = "DELETE from tasks
              WHERE task_ID= '$id'";
    $query2 = "INSERT into changes(changeType)
                        VALUE('Task $name Deleted')";
    
    if(mysqli_query($conn, $query2))
    {   
       mysqli_query($conn, $query);
       header("location:index.php"); 
    }
    

?>