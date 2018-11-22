function [spl] = relSPL(Pactual,Pref)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
spl = 20*log10(Pactual/Pref);
display(spl);
end

