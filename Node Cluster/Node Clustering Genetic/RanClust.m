function [P1 P2 P3 P4 P5 P6] = RanClust(c,i,n)
% P1=randi(c,i,n);
% P2=randi(c,i,n);
% P3=randi(c,i,n);
% P4=randi(c,i,n);
% P5=randi(c,i,n);
% P6=randi(c,i,n);

P1=ceil(c*rand(i,n));
P2=ceil(c*rand(i,n));
P3=ceil(c*rand(i,n));
P4=ceil(c*rand(i,n));
P5=ceil(c*rand(i,n));
P6=ceil(c*rand(i,n));