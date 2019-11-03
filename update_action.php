<?php
    //Connect to db
    include("connection.php");

    //When form is submitted
    if(isset($_POST['btnEdit']))
    {
        //Checking that all textboxes are not empty
        if(!empty($_POST['task']) || !empty($_POST['newtask']) || !empty($_POST['status']) || !empty($_POST['hours']))
        {
            //Declaring variables
            $currentTask = mysqli_real_escape_string ($conn,$_POST['task']);
            $newTask = mysqli_real_escape_string ($conn,$_POST['newtask']);
            $status = mysqli_real_escape_string ($conn,$_POST['status']);
            $newhours =  mysqli_real_escape_string ($conn,$_POST['hours']);
            
            //Stating query
            $query1= "UPDATE tasks
                     SET task_title = '$newTask', statusID = '$status', task_hours = '$newhours'
                     WHERE task_title = '$currentTask'";
            
            //To Do Status Query
            if($status == 1)
            {
                $query2 = "INSERT into changes(changeType)
                        VALUE('Task $currentTask Changed To $newTask Status: To Do. Hours: $newhours')";
            }
            
            //In Progress Status Query
            else if($status == 2)
            {
                 $query2 = "INSERT into changes(changeType)
                        VALUE('Task $currentTask Changed To $newTask Status: In Progress Hours: $newhours')";
                
            //Completed  Status Query
            }else if($status == 3)
            {
                $query2 = "INSERT into changes(changeType)
                        VALUE('Task $currentTask Changed To $newTask Status: Completed Hours: $newhours')";
            }
        }
            //Executing $query1
            if(mysqli_query($conn,$query1))
            {
                
                //Executing $query2
                if(mysqli_query($conn,$query2))
                {
                    header("location:index.php");
                }
                else
                {
                    echo "Query Error";
                }
            }
            
        }
        else
        {
            echo "ERROR";
        }
?>