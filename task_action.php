<?php
    //Connecting to db
    require_once ("connection.php");

    if(isset($_POST['btn_submit']))
    {
        //Validating if both textbox are NOT left empty
        if(!empty($_POST['task']) || !empty($_POST['hours']))
        {
            //Declaring variables
            $newtask = $_POST["task"];
            $status = "1";
            $hours = $_POST["hours"];
            
            //Declaring queries
            $query1 = "INSERT into tasks(task_title, statusID, task_hours)
                     VALUE('$newtask', '$status', '$hours')";
            $query2 = "INSERT into changes(changeType)
                        VALUE('New Task $newtask Added. Task Hours: $hours')";
            
            //Execute $query1
            if(mysqli_query($conn,$query1)) 
            {
                //Execute $query2
                if(mysqli_query($conn,$query2))
                {
                    header("location:index.php");
                }
                else
                {
                    echo "Query error";
                }
                
            }
            else
            {
                echo "Query Error";
            }
        }
        else
        {
            
            header("location:index.php");
        }
    }
?>