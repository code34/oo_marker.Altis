		call compilefinal preprocessFileLineNumbers "oo_marker.sqf";
	
		sleep 5;

		// create marker
		_mark = ["new", position player] call OO_MARKER;
		hint "create OO marker";

		sleep 2;

		// set text
		["setText", "Player is here"] spawn _mark;

		hint "Set text";
		sleep 2;

		// set color
		["setColor", "ColorRed"] spawn _mark;

		hint "Set red color";
		sleep 2;

		// set size
		["setSize", [0.5,0.5]] spawn _mark;

		hint "Increase size";
		sleep 2;

		// set position
		["setPos", position player] spawn _mark;

		hint "Set Pos to player pos";
		sleep 2;

		// set Alpha
		["setAlpha", 1] spawn _mark;

		hint "Set Alpha to 1";
		sleep 2;

		// set Type
		["setType", "mil_triangle"] spawn _mark;

		hint "Set Type to triangle";
		sleep 2;

		// set Brush
		["setBrush", "Solid"] spawn _mark;
		
		hint "Set Brush";
		sleep 2;

		// attach marker to object
		["attachTo", player] spawn _mark;

		hint "Attach marker to player";
		sleep 2;

		// blink marker each x seconds
		["blink", 0.5] spawn _mark;

		hint "Blink marker";
		sleep 5;

		// unblink marker
		["unBlink"] spawn _mark;

		// detach marker
		["detach"] spawn _mark;

		hint "UnBlink & detach marker";
		sleep 5;

		// Fadeoff marker in x seconds
		["fadeOff", 5] spawn _mark;

		hint "Fade off";
		sleep 5;

		// Fadein marker in x seconds
		["fadeIn", 5] spawn _mark;

		hint "Fade in";
		sleep 5;

		hint "Delete marker";
		// delete marker
		["delete", _mark] call OO_MARKER;