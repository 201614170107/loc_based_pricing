hold on

zoom_ratio_price = 1
credit_threshould = 20

number_of_members = 1877
number_of_samples = 835

for ptr = 1:number_of_members
    if member(ptr,2) >= credit_threshould
        plot(member(ptr,4),member(ptr,3),'k.')
    end
end

for ptr = 1:number_of_samples
   if ended_task_info(ptr,4) == 0 
      plot(ended_task_info(ptr,2),ended_task_info(ptr,1),'o','MarkerEdgeColor','r','MarkerSize',(ended_task_info(ptr,3)-64)*zoom_ratio_price)
   else
      plot(ended_task_info(ptr,2),ended_task_info(ptr,1),'o','MarkerEdgeColor','b','MarkerSize',(ended_task_info(ptr,3)-64)*zoom_ratio_price)

   end
end

