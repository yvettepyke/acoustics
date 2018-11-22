function [] = soundIntensityPlot(Wsource,rmin, rmax)
%plot sound intensity between 2 distances
%   
rRamp = linspace(rmin,rmax);
iRamp = Wsource./(4*pi*rRamp.^2);
subplot(1,2,1), plot(rRamp, iRamp);
xlabel('distance from source')
ylabel('intensity')

subplot(1,2,2), loglog(rRamp, iRamp);
xlabel('log distance from source');
ylabel('log intensity');

end

