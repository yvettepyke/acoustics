function [I] = soundIntensity(Wsource,r)
%sound intensity as a function of distance
% 
I = Wsource/(4*pi*r^2);
display(I);
end

