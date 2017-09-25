hold on
x = 0:1e2:13e4;
polyK = polyfit(ended_task_info(:,8),ended_task_info(:,3),9)
y = polyval(polyK,x)
plot(ended_task_info(:,8),ended_task_info(:,3),'.r')
plot(x,y,'.b')