number_of_samples = 835

for ptr = 1:number_of_samples
    clc
    disp(sprintf('Calculating Distance To Center of No. %d',ptr))
    dist = distance(ended_task_info(ptr,1),ended_task_info(ptr,2),center(ended_task_info(ptr,7),1),center(ended_task_info(ptr,7),2));
    dist = dist * 6371 * 1000 * 2 * 3.14 / 360
    ended_task_info(ptr,8) = dist;
end