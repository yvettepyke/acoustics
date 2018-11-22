function [Wreverberant] = reverberantSound(surfaceArea, Wsource, absorptionCoefficient)
%reverberant sound power in a room in watts

Wreverberant = Wsource*4*((1-absorptionCoefficient)/(surfaceArea*absorptionCoefficient));

end

