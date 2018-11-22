function [rspl, splol, rc, splorf] = reverberantSoundPowerLevel(sil, d, s, a)
%calculates a bunch of stuff
%   reverberant sound power level, sound power level of speaker, room
%   constant, sound pressure level of reverberant field

rspl = sil + 10*log10(4*pi*d^2) + 10*log10(4/roomConstant(a,s));
splol = sil + 10*log10(4*pi*d^2);
rc = roomConstant(a, s);
splorf = rspl;
end

