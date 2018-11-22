function [] = silPlot(w,rMin, rMax)
%plot how sound intensity level changes across a distance
%   Detailed explanation goes here

rRamp = linspace(rMin,rMax);
iRamp = w./(4*pi*rRamp.^2);

silRamp = 10*log10(iRamp./(10e-12));


subplot(1,2,1), plot(rRamp, silRamp);
xlabel('distance from source');
ylabel('sound intensity level');


end

