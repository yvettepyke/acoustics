function [wave] = waveGen(hz, secs)
%generates a wave at asampling rate of  44100

wave = 0 : (2*(hz/secs)*pi)/44100 : 2*hz*pi-((2*(hz/secs)*pi)/44100);

end

