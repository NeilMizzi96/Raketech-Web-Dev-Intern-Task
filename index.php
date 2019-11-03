<?php
    include "header.php";
    
    //function to populate lists 
    function populateList($statusID,$content,$completed)
    {
        
        include "connection.php";
        
        //Query to select records according to statusID
        $query = "Select * FROM tasks
        WHERE statusID = '$statusID'";
         
        //Query to add total no. of hours according to statusID
        $query2 = "SELECT SUM(task_hours) as 'totalhours'
                    FROM tasks
                    WHERE statusID = '$statusID'";
                        
        $result = mysqli_query($conn,$query)or die("Error in query...");
                            
        $result2= mysqli_query($conn,$query2)or die("Error in query...");
                        
        $sum = mysqli_fetch_array($result2);
                            
        while($row = mysqli_fetch_assoc($result))
        {
            //Displaying records as a list item with a delete button
            
            echo "<li>"."<a href = '' >"."<div class='content $content'>"."<p class = '$completed'>"."$row[task_title]  ($row[task_hours]h)"."</p>"."<a href='delete.php?id=$row[task_ID]&name=$row[task_title]'><button type='button' class='btnDelete''>X</button></a>"."</div>"."</a>"."</li>";
        }
            //Displaying total number of hours as a list item
            echo "<div class='content $content'>"."<p>"."Total Hours: ".$sum['totalhours']."</p>"."</div>";  
    }
?>
    <hr>
        <div class="container">
            <div class="row">
            <div id="1" class ="col-md-4">
                
                <!-- To Do Section -->
                <div id="titleTD"><h1 class="title">To-Do</h1></div>
                    <ul id="sortable1" class="list connectedSortable">
                        
                        <?php
                        
                            //Calling function with statusID and styling for To-Do records
                        
                            populateList("1", "td", "");
                            
                        ?>
                    </ul>
                
                 <!-- New Task Form -->
                
                <div class="addTask">
                    
                    <form action = "task_action.php" method="post">
                        <div class='form-group-row'>
                        <label for="task" class="cols-sm-2">New Task:</label>
                        <input type="text" placeholder="New Task Here" id="task" name="task" class="txtBox"/>
                        <label for="task" class="cols-sm-2">Hours:</label>
                        <input type="number" placeholder="New Hours Here" id="hours" name="hours" class="txtBox"/>
                        <input type="submit" value="Submit" name="btn_submit" id="btnSubmit"/>
                    </div> 
                        
                    </form>
                </div>
                        
                    
                </div>
                
                <!-- In Progress Section -->
                
                <div class ="col-md-4">
                    
                    <div id="titleIP"><h1 class="title">In Progress</h1></div>
                    <ul id="sortable3" class="list connectedSortable">
                        
                        <?php
                        
                            //Calling function with statusID and styling for In Progress records
                            populateList("2", "pt", "");
                        ?>
                    </ul>
                </div>
                    
                <!-- Completed section -->
                    
                    <div class ="col-md-4">
                    <div id="titleC"><h1 class="title">Completed</h1></div>
                    
                    <ul id="sortable2" class="list connectedSortable">
                        <?php
                        
                        //Calling function with statusID and styling for Completed records
                          populateList("3", "c", "completed");
                        ?>
                    </ul>
                    <!-- Edit Task Form -->
                        
                        <div id="editTask">
                        <form action = "update_action.php" method="post">
                        <div class='form-group-row'>
                        <label for="task" class="cols-sm-2">Edit Task:</label>
                        <input type="text" placeholder="Existing Task Here" id="task" name="task" class="txtBox"/>
                        <input type="text" placeholder="New Task Here" id="newtask" name="newtask" class="txtBox"/>
                        <input type="number" placeholder="Enter Hours Here" id="hours" name="hours" class="txtBox"/>
                        <select name="status" class="txtBox">
                            
                            <option value="1">To Do</option>
                            <option value="2">In Progress</option>
                            <option value="3">Completed</option>
                            
                        </select>
                        <input type="submit" value="Edit Task" name="btnEdit" id="btnEdit"/>
                    </div>  
        <?php
        
            include "footer.php";
        ?>
</html>