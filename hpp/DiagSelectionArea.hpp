class DiagSelectionArea
{
	idd = 1500;
	name = "DiagSelectionArea";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "";

	class TabBtn : RscButtonMenu 
	{
		x = 0;
		y = 0;
		//w = 0.1875;
		w = 0.08;
		h = 0.075;

		font = "PuristaMedium";

		animTextureNormal = "#(argb,8,8,3)color(1,1,1,0.8)";
		animTextureDisabled = "#(argb,8,8,3)color(1,1,1,1.0)";
		animTextureOver = "#(argb,8,8,3)color(1,1,1,1.0)";
		animTextureFocused = "#(argb,8,8,3)color(1,1,1,1.0)";
		animTexturePressed = "#(argb,8,8,3)color(1,1,1,1.0)";
		animTextureDefault = "#(argb,8,8,3)color(1,1,1,0.8)";
		color[] = {1, 1, 1, 1};
		color2[] = {1, 1, 1, 1};
		colorFocused[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 1};
		colorBackground[] = {0, 0, 0, 1};
		colorBackground2[] = {0, 0, 0, 1};
		colorBackgroundFocused[] = {0, 0, 0, 1};
		shadow = false;
		style = 2;
		
		offsetX = 0;
		offsetY = 0;
		offsetPressedX = 0;
		offsetPressedY = 0;

		class ShortcutPos {
			left = 0;
			top = 0;
			w = 0;
			h = 0;
		};
		
		class TextPos {
			left = 0;
			top = 0;
			right = 0;
			bottom = 0;
		};
	};
	class MainListBox : RscListBox 
	{
		idc = 1561;

		x = 0;
		y = 0.08;
		w = 0.375;
		h = 1 - 0.08 * 2;

		sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)";
		rowHeight = 2 * GUI_GRID_CENTER_H;

		colorBackground[] = {0.2,0.2,0.2,0.8};
		colorSelectBackground[] = {1,1,1,0};
		colorSelectBackground2[] = {0,0,0,1};

		pictureColor[] = {1,1,1,1};
		pictureColorSelect[] = {1,1,1,1};
		pictureColorDisabled[] = {1,1,1,0.5};

		itemSpacing = 0; 
		maxHistoryDelay = 1;
		canDrag = 0;

		onLBSelChanged = "['onLBSelChanged', _this] call ATC_fnc_showSelectionAreaDiag";
	};

	class ControlsBackground
	{
		class NavBG : RscText
		{
			idc = -1;
			colorBackground[] = {0.2,0.2,0.2,0.8};
			x = 0;
			y = 0;
			w = 0.375;
			h = 0.08;
		};
		class InfoBG : RscText
		{
			idc = -1;
			colorBackground[] = {0.2,0.2,0.2,0.8};
			x = 0.375;
			y = 0.92;
			w = 1 - 0.375;
			h = 0.08;
		};
		class AreaInfoTitle : RscText
		{
			idc = -1;
			colorBackground[] = {0,0,0,0};
			x = 0.375;
			y = 0.92;
			w = 0.3125;
			h = 0.08;

			text = "Area:";
		};
		class TimeInfoTitle : RscText
		{
			idc = -1;
			colorBackground[] = {0,0,0,0};
			x = 0.375 + 0.3125;
			y = 0.92;
			w = 0.3125;
			h = 0.08;

			text = "Time:";
		};
	};
	
	class Controls
	{
		class MapTab: TabBtn
		{
			idc = 1551;
			x = 0;
			y = 0;

			text = "<img image='\A3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\map_ca.paa' align='center' size='1.8' />";
			tooltip = "Select area";

			action = "['onButtonClickNav', [1551, 1651]] call ATC_fnc_showSelectionAreaDiag";
		};
		class TimeTab: TabBtn
		{
			idc = 1552;	
			x = 0.082;
			y = 0;

			text = "<img image='\A3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\watch_ca.paa' align='center' size='1.8' />";
			tooltip = "Select time";

			action = "['onButtonClickNav', [1552, 1652]] call ATC_fnc_showSelectionAreaDiag";
		};
		class SectorsList : MainListBox 
		{
			idc = 1651;

			x = 0;
			y = 0.08;
			w = 0.375;
			h = 1 - 0.08 * 2;

			onLBSelChanged = "['onLBSelChanged', _this] call ATC_fnc_showSelectionAreaDiag";
		};
		class TimeList : MainListBox 
		{
			idc = 1652;

			x = 0;
			y = 0.08;
			w = 0.375;
			h = 1 - 0.08 * 2;
			
			onLBSelChanged = "['onLBSelChanged', _this] call ATC_fnc_showSelectionAreaDiag";
		};
		class SelectMap : RscMapcontrol 
		{	
			idc = 1512;
			x = 0.375;
			y = 0;
			w = 1 - 0.375;
			h = 1 - 0.08;
		};
		class AreaInfo : RscText
		{
			idc = 1514;
			colorBackground[] = {0,0,0,0};
			x = 0.375 + 0.07;
			y = 0.92;
			w = 0.3125;
			h = 0.08;

			text = "None";
		};
		class TimeInfo : RscText
		{
			idc = 1515;
			colorBackground[] = {0,0,0,0};
			x = 0.375 + 0.3125 + 0.07;
			y = 0.92;
			w = 0.3125;
			h = 0.08;
		};
		class BtnSelect : RscButton 
		{
			idc = 1513;
			text = "Start game";
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)";

			x = 0;
			y = 0.92;			
			w = 0.375;
			h = 0.08;

			colorBackground[] = {1,0.839,0,.9};
			colorSelectBackground[] = {1,1,1,0};
			colorSelectBackground2[] = {0,0,0,1};

			offsetX = 0;
			offsetY = 0;
			offsetPressedX = 0;
			offsetPressedY = 0;

			action = "['onButtonClick'] call ATC_fnc_showSelectionAreaDiag";
		};
	};
};