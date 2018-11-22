function [I] = soundIntensityWithBoundaries(Q, Wsource, rMin, rMax)
%sound intensity with boundariesas a function of distance
% 
rRamp = linspace(rMin,rMax);
iRamp = (Wsource*Q)./(4*pi*rRamp.^2);
silRamp = 10*log10(iRamp./(10e-12));

subplot(1,2,1), plot(rRamp, silRamp);
xlabel('distance from source');
ylabel('sound intensity');

end