		private ["_mark"];

		call compilefinal preprocessFileLineNumbers "oo_marker.sqf";

		// create marker
		_mark = ["new", position player] call OO_MARKER;

		sleep 10;

		// set text
		["SetText", "Player is here"] spawn _mark;

		// set color
		["SetColor", "ColorRed"] spawn _mark;

		// set size
		["SetSize", [3,3]] spawn _mark;

		// set position
		["SetPos", position player] spawn _mark;

		// set Alpha
		["SetAlpha", 1] spawn _mark;

		// set Type
		["SetType", "mil_dot"] spawn _mark;

		// set Brush
		["SetBrush", "Solid"] spawn _mark;

		// attach marker to object
		["Attach", player] spawn _mark;

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