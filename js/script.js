
//Change background colour of list items on hover function
function changeBg(content, colour)
        {
            $(content).hover(function()
            {
                $(this).css("background-color", colour);
            },  function()
                {
                    $(this).css("background-color","#ede8e8");
                });
        }
//Changing background colour of list items       
changeBg(".c", "red");
changeBg (".pt", "orange");
changeBg(".td", "green");
changeBg (".btnDelete", "red");
            
//Alerting user when task is deleted
$(".btnDelete").click(function()
{
    alert("Task Deleted");
})

//Drag and Drop Function
$( function() {
$( "#sortable1, #sortable2, #sortable3" ).sortable({
     connectWith: ".connectedSortable"
}).disableSelection();
} );
            