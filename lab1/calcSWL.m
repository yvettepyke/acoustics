function [swl] = calcSWL(Wactual)
%function for calculating sound power level
wref = 10e-12;
swl = 10*log10(Wactual/wref);
display(swl);
end

