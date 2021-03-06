
for ptr = 1:number_of_samples
    clc
    disp(sprintf('Searching Mission No. %d',ptr))
    count = 0;
    count_cg20 = 0;
    parfor n = 1:number_of_members
        dist = distance(ended_task_info(ptr,1),ended_task_info(ptr,2),member(n,3),member(n,4));
        dist = dist * 6371 * 1000 * 2 * 3.14 / 360;
        if dist <= 10000
            disp(sprintf('No.%d, Lon %f, Lat %f, Distance %f KM',n,member(n,3),member(n,4),dist / 1000))
            if member(n,2) >= 20
                count_cg20 = count_cg20 + 1;
            end
            count = count + 1;
        end
    end
    ended_task_info(ptr,5) = count;
    ended_task_info(ptr,6) = count_cg20;

end

