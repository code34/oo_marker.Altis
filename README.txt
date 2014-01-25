oo_marker.Altis
===============

/*
	Function: _mark = ["new", position] call OO_MARKER;
	Create a new marker object
	
	Parameters:
		position - position where happen marker.
	
*/

/*
	Function: = ["delete", _mark] call OO_MARKER;
	Delete the marker object
	
	Parameters:
		marker - OO marker.
	
*/

/*
	Function: ["SetText", textStr] spawn _mark;
	Set the marker text
	
	Parameters:
		textStr - text to write
	
*/

/*
	Function: ["SetColor", colorStr] spawn _mark;
	Set the marker color
	
	Parameters:
		colorStr - string of the marker color

	See Also:
		http://community.bistudio.com/wiki/setMarkerColor
	
*/

/*
	Function: ["SetSize", sizeArray] spawn _mark;
	Set the marker size
	
	Parameters:
		sizeArray - array containing size of the array
	
*/

/*
	Function: ["SetPos", posArray] spawn _mark;
	Set the marker text
	
	Parameters:
		posArray - position where happen marker
	
*/

/*
	Function: ["SetAlpha", alphaScal] spawn _mark;
	Set the marker alpha
	
	Parameters:
		alphaScal - scalar to set alpha of marker 0-1
	
*/

/*
	Function: ["SetType", typeStr] spawn _mark;
	Set the marker type
	
	Parameters:
		typeStr - string of the marker type

	See Also:
		http://community.bistudio.com/wiki/cfgMarkers
	
*/

/*
	Function: ["Attach", object] spawn _mark;
	Attach a marker to an object
	
	Parameters:
		object - object who the marker attach to
	
*/

/*
	Function: ["Detach"] spawn _mark;
	Detach a marker of an object
	
	Parameters: None
	
*/

/*
	Function: ["Fadeoff", timeScl] spawn _mark;
	Fade off in x seconds
	
	Parameters:
		timeScl - time to fadeoff object in seconds
	
*/

/*
	Function: ["Fadein", timeScl] spawn _mark;
	Fade in in x seconds
	
	Parameters:
		timeScl - time to fadein object in seconds
	
*/

/*
	Function: ["Blink", timeScl] spawn _mark;
	Blink the marker each x seconds
	
	Parameters:
		timeScl - time to blink the marker
	
*/

/*
	Function: ["UnBlink"] spawn _mark;
	UnBlink the marker 
	
	Parameters: None
	
*/



