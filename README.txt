	/*
	Author: code34 nicolas_boiteux@yahoo.fr
	Copyright (C) 2013 Nicolas BOITEUX

	CLASS OO_MARKER
	
	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.
	
	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License
	along with this program.  If not, see <http://www.gnu.org/licenses/>. 
	*/

	Create a main bus message between clients & server
	
	Usage:
		put the "oo_marker.sqf" and the "oop.h" files in your mission directory
		put this code into your mission init.sqf
		call compilefinal preprocessFileLineNumbers "oo_marker.sqf";

	See example mission in directory: init.sqf
	
	Licence: 
	You can share, modify, distribute this script but don't remove the licence and the name of the original author

	logs:
		0.3 - OO Marker - add accessor, fix efficients problem, delete useless internals variable
		0.2 - OO Marker - fix locality & case sensitive, add accessor methods
		0.1 - OO Marker - first release


