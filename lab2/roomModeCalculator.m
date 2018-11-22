function [f] =  roomModeCalculator(c,N,P,Q,l,w,h)
%	Function for calculating frequency of room nodes from room dimensions,
%	Assuming a rectangular room
%  	As per Acoustics & Psychoacoustics page 279 equation 6.22

%   NOTE, when using the function consider that N the number of half wavelengths which fit 
% between parallel boundaries relating to the length of the room,
%   while P considers half wavelengths which fit into width of the 
%   room, and Q the height of the room.  ; i.e. N = 1, P = 0, Q = 0,
%   will return the 1st axial room mode (between the boundaries which form 
%   the length of the room) whilst N= 0, P = 1, Q = 0 returns the axial room mode which forms in the width of the room. 

%   N = 1, P = 1, Q= 0, will return the 1st tangential room mode 
%   (between the boundaries of the length and width of the room) and N = 1,
%   P = 1, Q= 1 will return the 1st oblique room mode.

f = c/2*sqrt((N/l)^2 + (P/w)^2 + (Q/h)^2);

%   Where c is the speed of sound
%   N considers the nth mode of the length boundaries (set to 0 if not desired) 
%   P considers the nth mode of the width boundaries (set to 0 if not desired) 
%   Q considers the nth mode of the height boundaries (set to 0 if not desired) 
%   l is the length of the room
%   w is the width of the room
%   h is the height of the room
%   f is expressed in Hz

%display(f);
end
