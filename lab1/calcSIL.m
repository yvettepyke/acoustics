function [sil] = calcSIL(intensity)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
sil = 10*log10(intensity/(10e-12));
display(sil);
end

