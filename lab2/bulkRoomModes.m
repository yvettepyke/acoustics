function [] = bulkRoomModes(c,l,w,h,n)

%   Calculate Room Modes
%
%   Function for looping the use of the roomModeCalculator function to acquire
%   a set of axial, tangential and oblique room mode frequencies, 
%
%   Input Arguments:
%   c = speed of sound (in m/s)
%   l = length of room (in m)
%   w = width of room (in m)
%   h = height of room (in m)
%   n = number of half wavelengths to check across each dimensions 

axialModesL = zeros(n, 1);
for i = 1:n
    axialModesL(i) = roomModeCalculator(c,i,0,0,l,w,h);
end

axialModesW = zeros(n, 1);
for i = 1:n
    axialModesW(i) = roomModeCalculator(c,0,i,0,l,w,h);
end

axialModesH = zeros(n, 1);
for i = 1:n
    axialModesH(i) = roomModeCalculator(c,0,0,i,l,w,h);
end

axialModesAll = vertcat(axialModesL, axialModesW, axialModesH);
axialModesAll(:,2) = 9;

tangentialModesLW = zeros(n^2, 1);
for a = 1 : n
   for i = 1 : n 
       tangentialModesLW(i+(a-1)*n) = roomModeCalculator(c, a, i, 0, l, w, h);
   end    
end

tangentialModesLH = zeros(n^2, 1);
for a = 1 : n
   for i = 1 : n 
       tangentialModesLH(i+(a-1)*n) = roomModeCalculator(c, a, 0, i, l, w, h);
   end    
end

tangentialModesWH = zeros(n^2, 1);
for a = 1 : n
   for i = 1 : n 
       tangentialModesWH(i+(a-1)*n) = roomModeCalculator(c, 0, a, i, l, w, h);
   end    
end

tangentialModesAll = vertcat(tangentialModesLW, tangentialModesLH, tangentialModesWH);
tangentialModesAll(:,2) = 6;


obliqueModes = zeros(n^3, 1);
for k = 1 : n
    for a = 1 : n
        for i = 1 : n
            obliqueModes(i + (a-1)*n + (k-1)*n^2) = roomModeCalculator(c, k, a, i, l, w, h);
        end
    end
end

obliqueModes(:,2) = 3;

allModes = vertcat(axialModesAll, tangentialModesAll, obliqueModes);

stem(allModes(:,1),allModes(:,2));
xlabel('frequency in Hz');
ylabel('relative magnitude in dB');

end 
