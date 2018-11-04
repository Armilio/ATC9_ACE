//Benefit, script made for ATC9 by {BDR}*Nemesi*


if ((ATC_DB_attSide == OPFOR) && (ATC_DB_defSide == BLUFOR)) then {

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

removeAllActions flagA;

deletevehicle Benefit_LB;
deletevehicle nyxA;
deletevehicle rhinoA;
deletevehicle ATA;
deletevehicle logiA;
