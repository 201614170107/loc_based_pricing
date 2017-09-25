kmeans_cnt = [0 0 0 0 0]

number_of_samples = 835

for ptr = 1:number_of_samples
    kmeans_cnt(ended_task_info(ptr,7)) = kmeans_cnt(ended_task_info(ptr,7)) + 1
end