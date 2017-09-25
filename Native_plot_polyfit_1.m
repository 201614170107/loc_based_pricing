hold on
x = 0:0.001:0.15;
for ptr = 1:number_of_samples
    mindist(ptr,1) = cDist(ptr,ldx(ptr))
end
polyK = polyfit(mindist(:,1),ended_task_info(:,3),9)
y = polyval(polyK,x)
plot(mindist(:,1),ended_task_info(:,3),'.r')
plot(x,y,'.b')