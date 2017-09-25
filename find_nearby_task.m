
for ptr = 1:number_of_members
    clc
    disp(sprintf('Searching Member No. %d',ptr))
    count = 0;
    count_fail = 0;
    parfor n = 1:number_of_samples
        dist = distance(ended_task_info(n,1),ended_task_info(n,2),member(ptr,3),member(ptr,4));
        dist = dist * 6371 * 1000 * 2 * 3.14 / 360;
        if dist <= 10000
            disp(sprintf('No.%d, Lon %f, Lat %f, Distance %f KM',n,ended_task_info(n,1),ended_task_info(n,2),dist / 1000))
            if ended_task_info(n,4) == 0
                count_fail = count_fail + 1;
            end
            count = count + 1;
        end
    end
    member(ptr,7) = count_fail;
    member(ptr,5) = count;
    member(ptr,6) = count - count_fail;
end

