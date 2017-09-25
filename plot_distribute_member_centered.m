hold on

zoom_ratio_price = 1
zoom_ratio = 0.4
credit_threshould = 20

number_of_members = 1877
number_of_samples = 835

for ptr = 1:number_of_members
    if member(ptr,2) >= 20
        plot(member(ptr,4),member(ptr,3),'k.')
        plot(member(ptr,4),member(ptr,3),'o','MarkerEdgeColor','r','MarkerSize',member(ptr,7)*zoom_ratio+1)
        plot(member(ptr,4),member(ptr,3),'o','MarkerEdgeColor','b','MarkerSize',member(ptr,6)*zoom_ratio+1)
    end
end


for ptr = 1:number_of_samples
    plot(ended_task_info(ptr,2),ended_task_info(ptr,1),'o','MarkerEdgeColor','g','MarkerSize',(ended_task_info(ptr,3)-64)*zoom_ratio_price)
    plot(ended_task_info(ptr,2),ended_task_info(ptr,1),'o','MarkerEdgeColor','y','MarkerSize',ended_task_info(ptr,6)*zoom_ratio+1)
end