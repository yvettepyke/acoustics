function [Iactual, Sil] = soundIntensityLevel(W,r)
%	Function for calculating sound intensity using inverse square law
%	
%
%   As per Acoustics & Psychoacoustics see example 1.13 
Iactual = W/(4*pi*r^2);
%
%   W is the power of the source (in W)
%   and r is the distance from the source (in m) 
%   Iactual is power level per unit area expressed in W m^-2
%
%   Convert to dB SIL
%
Iref = 10e-12;
Sil = 10*log10(Iactual/Iref);
%   Where Iactual is the actual sound power density level (in W m^-2)
%   and Iref is the reference sound power density level (10^-12 m^-2)
%
%   SIL is expressed in dB SIL

end
