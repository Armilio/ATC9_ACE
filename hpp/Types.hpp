class RscText
{
	access = 0;
	type = 0;
	idc = -1;
	colorBackground[] = 
	{
		0,
		0,
		0,
		0
	};
	colorText[] = 
	{
		1,
		1,
		1,
		1
	};
	text = "";
	fixedWidth = 0;
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	style = 0;
	shadow = 1;
	colorShadow[] = 
	{
		0,
		0,
		0,
		0.5
	};
	font = "PuristaMedium";
	SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	linespacing = 1;
	tooltipColorText[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorBox[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorShade[] = 
	{
		0,
		0,
		0,
		0.65
	};
};
class RscStructuredText
{
	access = 0;
	type = 13;
	idc = -1;
	style = 0;
	colorText[] = 
	{
		1,
		1,
		1,
		1
	};
	class Attributes
	{
		font = "PuristaMedium";
		color = "#ffffff";
		align = "left";
		shadow = 1;
	};
	x = 0;
	y = 0;
	h = 0.035;
	w = 0.1;
	text = "";
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow = 1;
};
class RscPicture
{
	access = 0;
	type = 0;
	idc = -1;
	style = 48;
	colorBackground[] = 
	{
		0,
		0,
		0,
		0
	};
	colorText[] = 
	{
		1,
		1,
		1,
		1
	};
	font = "TahomaB";
	sizeEx = 0;
	lineSpacing = 0;
	text = "";
	fixedWidth = 0;
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.2;
	h = 0.15;
	tooltipColorText[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorBox[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorShade[] = 
	{
		0,
		0,
		0,
		0.65
	};
};
class RscEdit
{
	access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
	idc = CT_EDIT; // Control identification (without it, the control won't be displayed)
	type = CT_EDIT; // Type
	style = ST_LEFT; // Style
	default = 0; // Control selected by default (only one within a display can be used)
	blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

	x = 1 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
	y = 5 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
	w = 10 * GUI_GRID_CENTER_W; // Width
	h = 1 * GUI_GRID_CENTER_H; // Height

	text = "CT_EDIT"; // Displayed text
	sizeEx = GUI_GRID_CENTER_H; // Text size
	font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
	shadow = 0; // Shadow (0 - none, 1 - N/A, 2 - black outline)
	colorText[] = {0,0,0,1}; // Text and frame color
	colorDisabled[] = {1,1,1,0.5}; // Disabled text and frame color
	colorSelection[] = {1,0.5,0,1}; // Text selection color

	tooltip = ""; // Tooltip text
	tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
	tooltipColorText[] = {1,1,1,1}; // Tooltip text color
	tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

	canModify = 1; // True (1) to allow text editing, 0 to disable it
	autocomplete = "scripting"; // Text autocomplete, can be "scripting" (scripting commands) or "general" (previously typed text)

};
class RscCombo {
	access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
	idc = CT_COMBO; // Control identification (without it, the control won't be displayed)
	type = CT_COMBO; // Type
	style = ST_LEFT + LB_TEXTURES; // Style
	default = 0; // Control selected by default (only one within a display can be used)
	blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

	x = 1 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
	y = 9 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
	w = 10 * GUI_GRID_CENTER_W; // Width
	h = 1 * GUI_GRID_CENTER_H; // Height

	colorBackground[] = {0.2,0.2,0.2,1}; // Fill color
	colorSelectBackground[] = {1,0.5,0,1}; // Selected item fill color

	sizeEx = GUI_GRID_CENTER_H; // Text size
	font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
	shadow = 0; // Shadow (0 - none, 1 - N/A, 2 - black outline)
	colorText[] = {1,1,1,1}; // Text and frame color
	colorDisabled[] = {1,1,1,0.5}; // Disabled text color
	colorSelect[] = {1,1,1,1}; // Text selection color

	pictureColor[] = {1,0.5,0,1}; // Picture color
	pictureColorSelect[] = {1,1,1,1}; // Selected picture color
	pictureColorDisabled[] = {1,1,1,0.5}; // Disabled picture color

	tooltip = ""; // Tooltip text
	tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
	tooltipColorText[] = {1,1,1,1}; // Tooltip text color
	tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

	arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa"; // Expand arrow
	arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa"; // Collapse arrow

	wholeHeight = 5 * GUI_GRID_CENTER_H; // Maximum height of expanded box (including the control height)
	maxHistoryDelay = 1; // Time since last keyboard type search to reset it

	soundExpand[] = {"\A3\ui_f\data\sound\RscCombo\soundExpand",0.1,1}; // Sound played when the list is expanded
	soundCollapse[] = {"\A3\ui_f\data\sound\RscCombo\soundCollapse",0.1,1}; // Sound played when the list is collapsed
	soundSelect[] = {"\A3\ui_f\data\sound\RscCombo\soundSelect",0.1,1}; // Sound played when an item is selected

	// Scrollbar configuration (applied only when LB_TEXTURES style is used)
	class ComboScrollBar
	{
		width = 0; // Unknown?
		height = 0; // Unknown?
		scrollSpeed = 0.01; // Unknown?

		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa"; // Arrow
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa"; // Arrow when clicked on
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa"; // Slider background (stretched vertically)
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa"; // Dragging element (stretched vertically)

		color[] = {1,1,1,1}; // Scrollbar color
	};
};
class RscListBox
{
	access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
	idc = CT_LISTBOX; // Control identification (without it, the control won't be displayed)
	type = CT_LISTBOX; // Type
	style = ST_LEFT + LB_TEXTURES; // Style
	default = 0; // Control selected by default (only one within a display can be used)
	blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

	x = 1 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
	y = 11 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
	w = 10 * GUI_GRID_CENTER_W; // Width
	h = 3 * GUI_GRID_CENTER_H; // Height

	colorBackground[] = {0.2,0.2,0.2,1}; // Fill color
	colorSelectBackground[] = {1,0.5,0,1}; // Selected item fill color
	colorSelectBackground2[] = {0,0,0,1}; // Selected item fill color (oscillates between this and colorSelectBackground)

	sizeEx = GUI_GRID_CENTER_H; // Text size
	font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
	shadow = 0; // Shadow (0 - none, 1 - directional, color affected by colorShadow, 2 - black outline)
	colorText[] = {1,1,1,1}; // Text and frame color
	colorDisabled[] = {1,1,1,0.5}; // Disabled text color
	colorSelect[] = {1,1,1,1}; // Text selection color
	colorSelect2[] = {1,1,1,1}; // Text selection color (oscillates between this and colorSelect)
	colorShadow[] = {0,0,0,0.5}; // Text shadow color (used only when shadow is 1)

	pictureColor[] = {1,0.5,0,1}; // Picture color
	pictureColorSelect[] = {1,1,1,1}; // Selected picture color
	pictureColorDisabled[] = {1,1,1,0.5}; // Disabled picture color

	tooltip = ""; // Tooltip text
	tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
	tooltipColorText[] = {1,1,1,1}; // Tooltip text color
	tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

	period = 1; // Oscillation time between colorSelect/colorSelectBackground2 and colorSelect2/colorSelectBackground when selected

	rowHeight = 1.5 * GUI_GRID_CENTER_H; // Row height
	itemSpacing = 0; // Height of empty space between items
	maxHistoryDelay = 1; // Time since last keyboard type search to reset it
	canDrag = 1; // 1 (true) to allow item dragging

	soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1}; // Sound played when an item is selected

	// Scrollbar configuration (applied only when LB_TEXTURES style is used)
	class ListScrollBar
	{
		width = 0; // Unknown?
		height = 0; // Unknown?
		scrollSpeed = 0.01; // Unknown?

		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa"; // Arrow
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa"; // Arrow when clicked on
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa"; // Slider background (stretched vertically)
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa"; // Dragging element (stretched vertically)

		color[] = {1,1,1,1}; // Scrollbar color
	};
};
class RscListNBox
{
	access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
	idc = CT_LISTNBOX; // Control identification (without it, the control won't be displayed)
	type = CT_LISTNBOX; // Type
	style = ST_LEFT + LB_TEXTURES; // Style
	default = 0; // Control selected by default (only one within a display can be used)
	blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

	x = 29 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
	y = 15 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
	w = 10 * GUI_GRID_CENTER_W; // Width
	h = 3 * GUI_GRID_CENTER_H; // Height

	colorSelectBackground[] = {1,0.5,0,1}; // Selected item fill color
	colorSelectBackground2[] = {0,0,0,1}; // Selected item fill color (oscillates between this and colorSelectBackground)

	sizeEx = GUI_GRID_CENTER_H; // Text size
	font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
	shadow = 0; // Shadow (0 - none, 1 - directional, color affected by colorShadow, 2 - black outline)
	colorText[] = {1,1,1,1}; // Text and frame color
	colorDisabled[] = {1,1,1,0.5}; // Disabled text color
	colorSelect[] = {1,1,1,1}; // Text selection color
	colorSelect2[] = {1,1,1,1}; // Text selection color (oscillates between this and colorSelect)
	colorShadow[] = {0,0,0,0.5}; // Text shadow color (used only when shadow is 1)

	tooltip = ""; // Tooltip text
	tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
	tooltipColorText[] = {1,1,1,1}; // Tooltip text color
	tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

	columns[] = {0.1,0.4}; // Horizontal coordinates of columns (relative to list width, in range from 0 to 1)

	drawSideArrows = 1; // 1 to draw buttons linked by idcLeft and idcRight on both sides of selected line. They are resized to line height
	idcLeft = 1000; // Left button IDC
	idcRight = 1001; // Right button IDC

	period = 1; // Oscillation time between colorSelect/colorSelectBackground2 and colorSelect2/colorSelectBackground when selected

	rowHeight = GUI_GRID_CENTER_H; // Row height
	maxHistoryDelay = 1; // Time since last keyboard type search to reset it

	soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1}; // Sound played when an item is selected

	// Scrollbar configuration (applied only when LB_TEXTURES style is used)
	class ListScrollBar
	{
		width = 0; // Unknown?
		height = 0; // Unknown?
		scrollSpeed = 0.01; // Unknown?

		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa"; // Arrow
		arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa"; // Arrow when clicked on
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa"; // Slider background (stretched vertically)
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa"; // Dragging element (stretched vertically)

		color[] = {1,1,1,1}; // Scrollbar color
	};
};
class RscButton
{			
	access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
	idc = CT_BUTTON; // Control identification (without it, the control won't be displayed)
	type = CT_BUTTON; // Type
	style = ST_LEFT; // Style
	default = 1; // Control selected by default (only one within a display can be used)
	blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

	x = 1 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
	y = 3 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
	w = 10 * GUI_GRID_CENTER_W; // Width
	h = 1 * GUI_GRID_CENTER_H; // Height

	colorBackground[] = {0.2,0.2,0.2,1}; // Fill color
	colorBackgroundDisabled[] = {0,0,0,0.5}; // Disabled fill color
	colorBackgroundActive[] = {0,0,0,1}; // Mouse hover fill color
	colorFocused[] = {1,0.5,0,1}; // Selected fill color (oscillates between this and colorBackground)

	text = "CT_BUTTON"; // Displayed text
	sizeEx = GUI_GRID_CENTER_H; // Text size
	font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
	shadow = 1; // Shadow (0 - none, 1 - N/A, 2 - black outline)
	colorText[] = {1,1,1,1}; // Text color
	colorDisabled[] = {1,1,1,0.5}; // Disabled text color

	tooltip = ""; // Tooltip text
	tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
	tooltipColorText[] = {1,1,1,1}; // Tooltip text color
	tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

	borderSize = 0; // Left color width (border is a stripe of the control height on the left side)
	colorBorder[] = {1,1,1,1}; // Left border color

	colorShadow[] = {0,0,0,0.2}; // Background frame color
	offsetX = 0.0075; // Horizontal background frame offset
	offsetY = 0.01; // Vertical background frame offset
	offsetPressedX = 0.0075; // Horizontal background offset when pressed
	offsetPressedY = 0.01; // Horizontal background offset when pressed

	period = 1; // Oscillation time between colorBackground and colorFocused when selected
	periodFocus = 2; // Unknown?
	periodOver = 0.5; // Unknown?

	soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1}; // Sound played after control is activated in format {file, volume, pitch}
	soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1}; // Sound played when mouse cursor enters the control
	soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1}; // Sound played when the control is pushed down
	soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1}; // Sound played when the control is released after pushing down
};
class RscShortcutButton
{
	type = 16;
	x = 0.1;
	y = 0.1;
	class HitZone
	{
		left = 0;
		top = 0;
		right = 0;
		bottom = 0;
	};
	class ShortcutPos
	{
		left = 0;
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 20) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		w = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * (3/4)";
		h = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	};
	class TextPos
	{
		left = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * (3/4)";
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 20) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right = 0.005;
		bottom = 0;
	};
	shortcuts[] = 
	{
	};
	textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
	color[] = 
	{
		1,
		1,
		1,
		1
	};
	colorFocused[] = 
	{
		1,
		1,
		1,
		1
	};
	color2[] = 
	{
		0.95,
		0.95,
		0.95,
		1
	};
	colorDisabled[] = 
	{
		1,
		1,
		1,
		0.25
	};
	colorBackground[] = 
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",
		1
	};
	colorBackgroundFocused[] = 
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",
		1
	};
	colorBackground2[] = 
	{
		1,
		1,
		1,
		1
	};
	soundEnter[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundEnter",
		0.09,
		1
	};
	soundPush[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundPush",
		0.09,
		1
	};
	soundClick[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundClick",
		0.09,
		1
	};
	soundEscape[] = 
	{
		"\A3\ui_f\data\sound\RscButton\soundEscape",
		0.09,
		1
	};
	class Attributes
	{
		font = "PuristaMedium";
		color = "#E5E5E5";
		align = "left";
		shadow = "true";
	};
	idc = -1;
	style = 0;
	default = 0;
	shadow = 1;
	w = 0.183825;
	h = "((((safezoneW / safezoneH) min 1.2) / 1.2) / 20)";
	animTextureDefault = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureNormal = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureDisabled = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureOver = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\over_ca.paa";
	animTextureFocused = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\focus_ca.paa";
	animTexturePressed = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\down_ca.paa";
	periodFocus = 1.2;
	periodOver = 0.8;
	period = 0.4;
	font = "PuristaMedium";
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	text = "";
	action = "";
	class AttributesImage
	{
		font = "PuristaMedium";
		color = "#E5E5E5";
		align = "left";
	};
};
class RscShortcutButtonMain
{
	idc = -1;
	style = 0;
	default = 0;
	w = 0.313726;
	h = 0.104575;
	color[] = 
	{
		1,
		1,
		1,
		1
	};
	colorDisabled[] = 
	{
		1,
		1,
		1,
		0.25
	};
	class HitZone
	{
		left = 0;
		top = 0;
		right = 0;
		bottom = 0;
	};
	class ShortcutPos
	{
		left = 0.0145;
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 20) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)) / 2";
		w = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2) * (3/4)";
		h = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)";
	};
	class TextPos
	{
		left = "(((safezoneW / safezoneH) min 1.2) / 32) * 1.5";
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 20)*2 - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)) / 2";
		right = 0.005;
		bottom = 0;
	};
	animTextureNormal = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\normal_ca.paa";
	animTextureDisabled = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\disabled_ca.paa";
	animTextureOver = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\over_ca.paa";
	animTextureFocused = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\focus_ca.paa";
	animTexturePressed = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\down_ca.paa";
	animTextureDefault = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\normal_ca.paa";
	period = 0.5;
	font = "PuristaMedium";
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)";
	text = "";
	action = "";
	class Attributes
	{
		font = "PuristaMedium";
		color = "#E5E5E5";
		align = "left";
		shadow = "false";
	};
	class AttributesImage
	{
		font = "PuristaMedium";
		color = "#E5E5E5";
		align = "false";
	};
};
class RscFrame
{
	type = 0;
	idc = -1;
	style = 64;
	shadow = 2;
	colorBackground[] = 
	{
		0,
		0,
		0,
		0
	};
	colorText[] = 
	{
		1,
		1,
		1,
		1
	};
	font = "PuristaMedium";
	sizeEx = 0.02;
	text = "";
};
class RscSlider
{
	access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
	idc = CT_SLIDER; // Control identification (without it, the control won't be displayed)
	type = CT_SLIDER; // Type
	style = SL_HORZ; // Style
	default = 0; // Control selected by default (only one within a display can be used)
	blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

	x = 1 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
	y = 7 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
	w = 7 * GUI_GRID_CENTER_W; // Width
	h = 1 * GUI_GRID_CENTER_H; // Height

	color[] = {0,0,0,1}; // Text color
	colorDisabled[] = {1,1,1,0.5}; // Disabled text color
	colorActive[] = {1,0.5,0,1}; // Text selection color

	tooltip = ""; // Tooltip text
	tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
	tooltipColorText[] = {1,1,1,1}; // Tooltip text color
	tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

	class Title // Link to a title (obsolete?)
	{
		idc = -1; // Control IDC (has to be defined ABOVE the slider control)
		colorBase[] = {1,1,1,1}; // Text color
		colorActive[] = {1,0.5,0,1}; // Text color when the slider is active
	};
	class Value // Link to a control which will show slider value
	{
		idc = 1200; // Control IDC (has to be defined ABOVE the slider control)
		format = "%.f"; // Text format, value is represented by variable %g (float) or %.f (integer)
		type = SPTPlain; // Format, can be SPTPlain or SPTPercents (multiplies the value by 100)
		colorBase[] = {1,1,1,1}; // Text color
		colorActive[] = {1,0.5,0,1}; // Text color when the slider is active
	};
};
class RscCheckbox
{
	access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
	idc = CT_CHECKBOXES; // Control identification (without it, the control won't be displayed)
	type = CT_CHECKBOXES; // Type
	style = ST_LEFT; // Style
	default = 0; // Control selected by default (only one within a display can be used)
	blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

	x = 1 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
	y = 18 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
	w = 10 * GUI_GRID_CENTER_W; // Width
	h = 2 * GUI_GRID_CENTER_H; // Height

	colorSelectedBg[] = {1,0.5,0,1}; // Selected fill color

	text = "CT_CHECKBOXES"; // Displayed text
	sizeEx = GUI_GRID_CENTER_H; // Text size
	font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
	shadow = 0; // Shadow (0 - none, 1 - N/A, 2 - black outline)
	colorText[] = {1,1,1,0.5}; // Text color
	colorTextSelect[] = {1,1,1,1};  // Checked text color

	tooltip = ""; // Tooltip text
	tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
	tooltipColorText[] = {1,1,1,1}; // Tooltip text color
	tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

	rows = 2; // Number of rows
	columns = 2; // Number of columns
	strings[] = {"A","B","C","D"}; // Options (added row by row)
	checked_strings[] = {$STR_A3_RADIO_A,$STR_A3_RADIO_B,$STR_A3_RADIO_C,$STR_A3_RADIO_D}; // Options (added row by row)
	values[] = {1,2,3,4};

	color[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown
	colorSelect[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown
	colorTextDisable[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown
	colorDisable[] = {0,0,0,0}; // Does nothing, but must be present, otherwise an error is shown
};
class RscButtonMenu
{
	idc = -1;
	type = 16;
	style = "0x02 + 0xC0";
	default = 0;
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,1)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,1)";
	textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
	colorBackground[] = 
	{
		0,
		0,
		0,
		0.8
	};
	colorBackgroundFocused[] = 
	{
		1,
		1,
		1,
		1
	};
	colorBackground2[] = 
	{
		0.75,
		0.75,
		0.75,
		1
	};
	color[] = 
	{
		1,
		1,
		1,
		1
	};
	colorFocused[] = 
	{
		0,
		0,
		0,
		1
	};
	color2[] = 
	{
		0,
		0,
		0,
		1
	};
	colorText[] = 
	{
		1,
		1,
		1,
		1
	};
	colorDisabled[] = 
	{
		1,
		1,
		1,
		0.25
	};
	period = 1.2;
	periodFocus = 1.2;
	periodOver = 1.2;
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	tooltipColorText[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorBox[] = 
	{
		1,
		1,
		1,
		1
	};
	tooltipColorShade[] = 
	{
		0,
		0,
		0,
		0.65
	};
	class TextPos
	{
		left = "0.25 * (((safezoneW / safezoneH) min 1.2) / 40)";
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right = 0.005;
		bottom = 0;
	};
	class Attributes
	{
		font = "PuristaLight";
		color = "#E5E5E5";
		align = "left";
		shadow = "false";
	};
	class ShortcutPos
	{
		left = "(6.25 * (((safezoneW / safezoneH) min 1.2) / 40)) - 0.0225 - 0.005";
		top = 0.005;
		w = 0.0225;
		h = 0.03;
	};	
	class HitZone
	{
		left = 0;
		top = 0;
		right = 0;
		bottom = 0;
	};
	soundEnter[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",
		0.09,
		1
	};
	soundPush[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundPush",
		0.09,
		1
	};
	soundClick[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundClick",
		0.09,
		1
	};
	soundEscape[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",
		0.09,
		1
	};
};
class RscButtonMenuOK
{
	idc = 1;
	shortcuts[] = 
	{
		"0x00050000 + 0",
		28,
		57,
		156
	};
	default = 1;
	text = "ÐžÐš";
	soundPush[] = 
	{
		"\A3\ui_f\data\sound\RscButtonMenuOK\soundPush",
		0.09,
		1
	};
};
class RscButtonMenuCancel
{
	idc = 2;
	shortcuts[] = 
	{
		"0x00050000 + 1"
	};
	text = "ÐžÑ‚Ð¼ÐµÐ½Ð°";
};
class RscControlsGroup
{
	class VScrollbar
	{
		color[] = 
		{
			1,
			1,
			1,
			1
		};
		width = 0.021;
		autoScrollEnabled = 1;
	};
	class HScrollbar
	{
		color[] = 
		{
			1,
			1,
			1,
			1
		};
		height = 0.028;
	};
	class Controls
	{
	};
	type = 15;
	idc = -1;
	x = 0;
	y = 0;
	w = 1;
	h = 1;
	shadow = 0;
	style = 16;
};
class RscMapcontrol
{
	access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
	idc = CT_MAP; // Control identification (without it, the control won't be displayed)
	type = CT_MAP_MAIN; // Type
	style = ST_PICTURE; // Style
	default = 0; // Control selected by default (only one within a display can be used)
	blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

	x = 29 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
	y = 1 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
	w = 10 * GUI_GRID_CENTER_W; // Width
	h = 6 * GUI_GRID_CENTER_H; // Height

	sizeEx = GUI_GRID_CENTER_H; // Text size
	font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
	colorText[] = {0,0,0,1}; // Text color

	tooltip = ""; // Tooltip text
	tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
	tooltipColorText[] = {1,1,1,1}; // Tooltip text color
	tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

	moveOnEdges = 1; // Move map when cursor is near its edge. Discontinued.
		
	class LineMarker
	{
		lineWidthThin=0.0080000004;
		lineWidthThick=0.014;
		lineDistanceMin=2.9999999e-005;
		lineLengthMin=5;
	};	

	// Rendering density coefficients
	ptsPerSquareSea =	5;	// seas
	ptsPerSquareTxt =	20;	// textures
	ptsPerSquareCLn =	10;	// count-lines
	ptsPerSquareExp =	10;	// exposure
	ptsPerSquareCost =	10;	// cost

	// Rendering thresholds
	ptsPerSquareFor =	9;	// forests
	ptsPerSquareForEdge =	9;	// forest edges
	ptsPerSquareRoad =	6;	// roads
	ptsPerSquareObj =	9;	// other objects

	scaleMin = 0.001; // Min map scale (i.e., max zoom)
	scaleMax = 1.0; // Max map scale (i.e., min zoom)
	scaleDefault = 0.16; // Default scale

	alphaFadeStartScale = 0.1; // Scale at which satellite map starts appearing
	alphaFadeEndScale = 0.01; // Scale at which satellite map is fully rendered
	maxSatelliteAlpha = 0.85; // Maximum alpha of satellite map

	text = "#(argb,8,8,3)color(1,1,1,1)"; // Fill texture
	colorBackground[] = {1,1,1,1}; // Fill color

	colorOutside[] = {0,0,0,1}; // Color outside of the terrain area (not sued when procedural terrain is enabled)
	colorSea[] = {0.4,0.6,0.8,0.5}; // Sea color
	colorForest[] = {0.6,0.8,0.4,0.5}; // Forest color
	colorForestBorder[] = {0.6,0.8,0.4,1}; // Forest border color
	colorRocks[] = {0,0,0,0.3}; // Rocks color
	colorRocksBorder[] = {0,0,0,1}; // Rocks border color
	colorLevels[] = {0.3,0.2,0.1,0.5}; // Elevation number color
	colorMainCountlines[] = {0.6,0.4,0.2,0.5}; // Main countline color (every 5th)
	colorCountlines[] = {0.6,0.4,0.2,0.3}; // Countline color
	colorMainCountlinesWater[] = {0.5,0.6,0.7,0.6}; // Main water countline color (every 5th)
	colorCountlinesWater[] = {0.5,0.6,0.7,0.3}; // Water countline color
	colorPowerLines[] = {0.1,0.1,0.1,1}; // Power lines color
	colorRailWay[] = {0.8,0.2,0,1}; // Railway color
	colorNames[] = {1.1,0.1,1.1,0.9}; // Unknown?
	colorInactive[] = {1,1,0,0.5}; // Unknown?
	colorTracks[] = {0.8,0.8,0.7,0.2}; // Small road border color
	colorTracksFill[] = {0.8,0.7,0.7,1}; // Small road color
	colorRoads[] = {0.7,0.7,0.7,1}; // Medium road border color
	colorRoadsFill[] = {1,1,1,1}; // Medium road color
	colorMainRoads[] = {0.9,0.5,0.3,1}; // Large road border color
	colorMainRoadsFill[] = {1,0.6,0.4,1}; // Large road color
	colorGrid[] = {0.1,0.1,0.1,0.6}; // Grid coordinate color
	colorGridMap[] = {0.1,0.1,0.1,0.6}; // Grid line color

	fontLabel = GUI_FONT_NORMAL; // Tooltip font from CfgFontFamilies
	sizeExLabel = GUI_GRID_CENTER_H * 0.5; // Tooltip font size

	fontGrid = GUI_FONT_SYSTEM; // Grid coordinate font from CfgFontFamilies
	sizeExGrid = GUI_GRID_CENTER_H * 0.5; // Grid coordinate font size

	fontUnits = GUI_FONT_SYSTEM; // Selected group member font from CfgFontFamilies
	sizeExUnits = GUI_GRID_CENTER_H * 0.5; // Selected group member font size

	fontNames = GUI_FONT_NARROW; // Marker font from CfgFontFamilies
	sizeExNames = GUI_GRID_CENTER_H * 0.5; // Marker font size

	fontInfo = GUI_FONT_NORMAL; // Unknown?
	sizeExInfo = GUI_GRID_CENTER_H * 0.5; // Unknown?

	fontLevel = GUI_FONT_SYSTEM; // Elevation number font
	sizeExLevel = GUI_GRID_CENTER_H * 0.5; // Elevation number font size

	showCountourInterval = 1; // Show Legend

	class Task
	{
		icon = "#(argb,8,8,3)color(1,1,1,1)";
		color[] = {1,1,0,1};

		iconCreated = "#(argb,8,8,3)color(1,1,1,1)";
		colorCreated[] = {0,0,0,1};

		iconCanceled = "#(argb,8,8,3)color(1,1,1,1)";
		colorCanceled[] = {0,0,0,0.5};

		iconDone = "#(argb,8,8,3)color(1,1,1,1)";
		colorDone[] = {0,1,0,1};

		iconFailed = "#(argb,8,8,3)color(1,1,1,1)";
		colorFailed[] = {1,0,0,1};

		size = 8;
		importance = 1; // Required, but not used
		coefMin = 1; // Required, but not used
		coefMax = 1; // Required, but not used
	};
	class ActiveMarker
	{
		color[] = {0,0,0,1}; // Icon color
		size = 2; // Size in pixels
	};
	class Waypoint
	{
		coefMax = 1; // Minimum size coefficient
		coefMin = 4; // Maximum size coefficient
		color[] = {0,0,0,1}; // Icon color
		icon = "#(argb,8,8,3)color(0,0,0,1)"; // Icon texture
		importance = 1; // Drawing importance (when multiple icons are close together, the one with larger importance is prioritized)
		size = 2; // Size in pixels
	};
	class WaypointCompleted: Waypoint{};
	class CustomMark: Waypoint{};
	class Command: Waypoint{};
	class Bush: Waypoint{};
	class Rock: Waypoint{};
	class SmallTree: Waypoint{};
	class Tree: Waypoint{};
	class BusStop: Waypoint{};
	class FuelStation: Waypoint{};
	class Hospital: Waypoint{};
	class Church: Waypoint{};
	class Lighthouse: Waypoint{};
	class Power: Waypoint{};
	class PowerSolar: Waypoint{};
	class PowerWave: Waypoint{};
	class PowerWind: Waypoint{};
	class Quay: Waypoint{};
	class Transmitter: Waypoint{};
	class Watertower: Waypoint{};
	class Cross: Waypoint{};
	class Chapel: Waypoint{};
	class Shipwreck: Waypoint{};
	class Bunker: Waypoint{};
	class Fortress: Waypoint{};
	class Fountain: Waypoint{};
	class Ruin: Waypoint{};
	class Stack: Waypoint{};
	class Tourism: Waypoint{};
	class ViewTower: Waypoint{};
};

class RscMap
{
	access=0;
	class controls
	{
		class Map: RscMapControl
		{
			moveOnEdges=0;
		};
	};
};

class RscMapMain: RscMapcontrol
{
	access = 0; // Control access (0 - ReadAndWrite, 1 - ReadAndCreate, 2 - ReadOnly, 3 - ReadOnlyVerified)
	idc = CT_MAP; // Control identification (without it, the control won't be displayed)
	type = CT_MAP_MAIN; // Type
	style = ST_PICTURE; // Style
	default = 0; // Control selected by default (only one within a display can be used)
	blinkingPeriod = 0; // Time in which control will fade out and back in. Use 0 to disable the effect.

	x = 29 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
	y = 8 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
	w = 10 * GUI_GRID_CENTER_W; // Width
	h = 6 * GUI_GRID_CENTER_H; // Height

	tooltip = ""; // Tooltip text
	tooltipColorShade[] = {0,0,0,1}; // Tooltip background color
	tooltipColorText[] = {1,1,1,1}; // Tooltip text color
	tooltipColorBox[] = {1,1,1,1}; // Tooltip frame color

	showCountourInterval = 1; // Show Legend

	class Legend
	{
		x = 30 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X; // Horizontal coordinates
		y = 9 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y; // Vertical coordinates
		w = 8 * GUI_GRID_CENTER_W; // Width
		h = 4 * GUI_GRID_CENTER_H; // Height

		colorBackground[] = {1,1,1,1}; // Fill color
		
		font = GUI_FONT_NORMAL; // Font from CfgFontFamilies
		sizeEx = 0.8 * GUI_GRID_CENTER_H; // Text size
		color[] = {0,0,0,1}; // Text color		
	};
};