function [cd] = criticalDistance(R,Q)
%critical distance as a function of the room constant and directivity of
%the soundsnsdnf

cd = sqrt(1/(16*pi))*sprt(R*Q);

end

