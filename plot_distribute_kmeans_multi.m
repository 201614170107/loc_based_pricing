hold on

number_of_samples = 835

color = '  '

for ptr = 1:number_of_samples
    switch ended_task_info(ptr,12)
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
        case 6
            color = '.r';
        case 7
            color = '.g';
        case 8
            color = '.b';
        case 9
            color = '.y';
        case 10
            color = '.k';
        case 11
            color = '.r';
        case 12
            color = '.g';
        case 13
            color = '.b';
        case 14
            color = '.y';
        case 15
            color = '.k';
        case 16
            color = '.r';
        case 17
            color = '.g';
        case 18
            color = '.b';
        case 19
            color = '.y';
        case 20
            color = '.k';            
    end
    plot(ended_task_info(ptr,2),ended_task_info(ptr,1),color)
end

