hold on
zoom_ratio = 1
for ptr = 1:835
   if ended_task_info(ptr,4) == 0 
      plot(ended_task_info(ptr,2),ended_task_info(ptr,1),'o','MarkerEdgeColor','r','MarkerSize',(ended_task_info(ptr,3)-64)*zoom_ratio)
   else
       plot(ended_task_info(ptr,2),ended_task_info(ptr,1),'o','MarkerEdgeColor','b','MarkerSize',(ended_task_info(ptr,3)-64)*zoom_ratio)

   end
end