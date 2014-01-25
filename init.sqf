		call compilefinal preprocessFileLineNumbers "oo_marker.sqf";

		// create marker
		_mark = ["new", position player] call OO_MARKER;

		sleep 2;

		// set text
		["SetText", "Player is here"] spawn _mark;

		sleep 2;

		// set color
		["SetColor", "ColorRed"] spawn _mark;

		sleep 2;

		// set size
		["SetSize", [3,3]] spawn _mark;

		sleep 2;

		// set position
		["SetPos", position player] spawn _mark;

		sleep 2;

		// set Alpha
		["SetAlpha", 1] spawn _mark;

		sleep 2;

		// set Type
		["SetType", "mil_dot"] spawn _mark;

		sleep 2;

		// set Brush
		["SetBrush", "Solid"] spawn _mark;

		sleep 2;

		// attach marker to object
		["Attach", player] spawn _mark;

		sleep 2;

		// blink marker each x seconds
		["Blink", 0.5] spawn _mark;

		sleep 5;

		// unblink marker
		["UnBlink"] spawn _mark;

		// detach marker
		["Detach"] spawn _mark;

		sleep 5;

		// Fadeoff marker in x seconds
		["Fadeoff", 5] spawn _mark;

		sleep 5;

		// Fadein marker in x seconds
		["Fadein", 5] spawn _mark;

		sleep 5;

		// delete marker
		["delete", _mark] call OO_MARKER;