function add()
{
  
let ul  =  document.getElementById("taskParent");
console.log(ul);
}


function delete_row(id)
{
 $.ajax
 ({
  type:'post',
  url:'http://localhost/codespace/to-do-web-app-final/inc/modify.php',
  data:{
   delete_task:'delete_task',
   task_id:id,
  },
  success:function(response) {
   if(response =="SUCCESS")
   {
    let task_row=document.getElementById("listitem-"+id);
    
    task_row.remove();
   }
  },
  error:function(request, status, error){
      console.log(status);
      
  }
 });
}


function complete_task(id)
{
 $.ajax
 ({
  type:'post',
  url:'http://localhost/codespace/to-do-web-app-final/inc/modify.php',
  data:{
    task_status:'task_status',
   task_id:id,
  },
  success:function(response) {
    // console.log(response);

   if(response =="complete")
   {
    let task_row=document.getElementById("listitem-"+id);
    task_row.classList.remove("no");
    task_row.classList.add("complete");
    alert("Task completed.")
   }
   else{
    let task_row=document.getElementById("listitem-"+id);
    task_row.classList.remove("complete");
    alert("Task not completed.")
   }
  },
  error:function(request, status, error){
    //   console.log(status);
      
  }
 });
}
