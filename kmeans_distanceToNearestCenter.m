number_of_samples = 835
distarray = [0;0;0;0;0]
for ptr = 1:number_of_samples
    clc
    disp(sprintf('Calculating Distance To Center of No. %d',ptr))
    
    for cx = 1:5
        distarray(cx,1) = distance(ended_task_info(ptr,1),ended_task_info(ptr,2),center(cx,1),center(cx,2))
    end
    
    min(distarray)
    dist = min(distarray) * 6371 * 1000 * 2 * 3.14 / 360
    ended_task_info(ptr,9) = dist;
end