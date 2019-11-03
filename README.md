# Rakethech Web Dev Intern Task

This is a To-Do list application that allows the user to input new tasks as well as sort,delete and update existing ones withing 3 lists.

These lists are:

1) To Do (statusID = 1 Colour Coded: Green)
2) In Progress( statusID = 2 Colour Coded: Orange)
3) Completed (statusID = 3 Colour Coded: red)

Each task is stored in the databse **(The exported database has been provided in db/raketechtask_db)** and sorted with the mentioned list depending on their individual "status_ID".

Any added tasks or changes made to existing ones are all stored in the table tbl_changes

## Adding a new task:

1. Enter the name of the new task within the textbox with the placeholder "New Task Here" and the number of hours in the textbox underneath(Placeholder = "New Hours Here")
2. Click Submit. The new task will appear automatically under the To-Do list and the total hours at the bottom of the list will update. The number of hours and the name of the task will also be recorded in the database.

## Updating a task:

1. Enter the name of the current task within the textbox with the placeholder "Existing Task Here".
2. Enter the new name of the task within the textbox with the placeholder "New Task Here".
3. Enter the new ammount of hours within the textbox with the placeholder "Enter Hours Here".
4. Select either "To Do" , "In Progress" , "Completed" from the drop-down list.
5. Click Sumbit. The updated task will appear automatically under the list you have chosen in the drop down menu.
6. All changes are updated withing the database.

**Please note that if the user intends to change the number of hours or state ONLY make sure that the new task and existing task are written are identical. This also applies for the correct number of hours**

## Deleting a Task

1) Click on the "X" button under any task and it will be deleted from the list as well as the database. A record stating that the task was deleted will be recorded in the database.

## Dragging and Dropping

There is functionality for dragging and dropping withing lists. However in order to change the state of a task(e.g from To-Do to Completed) the user must edit the state from the edit form provided. Each list is colour coded, the state of the task can be identified by hovering over the task.

**Known Bug: Cannot Drop On Empty list **
