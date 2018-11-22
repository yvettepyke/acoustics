function [R] = roomConstant(absorptionCoefficient, surfaceArea)
%room constant

R = surfaceArea*absorptionCoefficient/(1-absorptionCoefficient);

end

