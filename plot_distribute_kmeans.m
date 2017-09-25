hold on

number_of_samples = 835

color = '  '

for ptr = 1:number_of_samples
    switch ended_task_info(ptr,7)
        case 1
            color = '.r';
        case 2
            color = '.g';
        case 3
            color = '.b';
        case 4
            color = '.y';
        case 5
            color = '.k';
    end
    plot(ended_task_info(ptr,2),ended_task_info(ptr,1),color)
end

