close all
clear all
clc

l1=0.5;
l2=0.5;

%link angles
theta1=linspace(5,90,10);
theta2=linspace(5,90,10);


x0=0.5;
y0=0.5;

for i=1:length(theta1)
   
   THETA1=theta1(i);
 for j=1:length(theta2)
   
   THETA2=theta2(j);
   
   %x1,y1
    x1=x0+l1*cosd(THETA1)
    y1=y0+l1*sind(THETA1);

    %x2,y2
    x2=x1+l2*cosd(THETA2);
    y2=y1+l2*sind(THETA2);
    
    plot([x0 x1],[y0 y1],[x1 x2],[y1 y2])
    
    axis([-0.5 2 0 2])
    pause(0.2)
        
 end
end