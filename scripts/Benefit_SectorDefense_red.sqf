//Benefit, script made for ATC9 by {BDR}*Nemesi*

if ((ATC_DB_attSide == BLUFOR) && (ATC_DB_defSide == OPFOR)) then {

BxB addmagazinecargoglobal ["ATC_MAG_Titan_AA",1];
BxC addmagazinecargoglobal ["ATC_MAG_Titan_AA",1];
BxA addmagazinecargoglobal ["ATC_MAG_Titan_AA",1];

BxB addmagazinecargoglobal ["MRAWS_HEAT_F",2];
BxC addmagazinecargoglobal ["MRAWS_HEAT_F",2];
BxA addmagazinecargoglobal ["MRAWS_HEAT_F",2];

BxB addmagazinecargoglobal ["MRAWS_HE_F",2];
BxC addmagazinecargoglobal ["MRAWS_HE_F",2];
BxA addmagazinecargoglobal ["MRAWS_HE_F",2];

};
removeAllActions flagB;

deletevehicle Benefit_LBR;
deletevehicle nyxB;
deletevehicle rhinoB;
deletevehicle ATB;
deletevehicle logiB;
