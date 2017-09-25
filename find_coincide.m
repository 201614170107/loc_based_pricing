clc
for ptr = 1:number_of_samples
   if ended_task_info(ptr,8) == ended_task_info(ptr,9)
       disp(sprintf('Found: %d',ptr))
   end
end