grad_groom setBehaviour "CARELESS";
(group grad_groom) setBehaviourStrong "CARELESS";
grad_groom setCombatMode "BLUE";

grad_bride setBehaviour "CARELESS";
(group grad_bride) setBehaviourStrong "CARELESS";
grad_bride setCombatMode "BLUE";

grad_groom setSpeedMode "LIMITED";
grad_bride setSpeedMode "LIMITED";

grad_groom assignAsCargoIndex [grad_couplevehicle, 2];
grad_bride assignAsCargoIndex [grad_couplevehicle, 4];
[grad_bride, grad_groom] orderGetIn true;