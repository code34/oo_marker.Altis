	/*
	Author: code34 nicolas_boiteux@yahoo.fr
	Copyright (C) 2013-2018 Nicolas BOITEUX

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

	#include "oop.h"

	CLASS("OO_MARKER")
		PRIVATE STATIC_VARIABLE("scalar","instanceid");
		PRIVATE VARIABLE("string","name");
		PRIVATE VARIABLE("string","marker");
		PRIVATE VARIABLE("bool","attached");
		PRIVATE VARIABLE("bool","local");
		PRIVATE VARIABLE("scalar","dir");
		PRIVATE VARIABLE("scalar","alpha");
		PRIVATE VARIABLE("string","shape");
		PRIVATE VARIABLE("string","type");
		PRIVATE VARIABLE("string","brush");
		PRIVATE VARIABLE("string","color");
		PRIVATE VARIABLE("array","size");
		PRIVATE VARIABLE("string","text");
		PRIVATE VARIABLE("array","position");

		PUBLIC FUNCTION("array","constructor") {
			private _instanceid = MEMBER("instanceid",nil);
			if (isNil "_instanceid") then {_instanceid = 0;};
			_instanceid = _instanceid + 1;
			MEMBER("instanceid",_instanceid);

			private _name = "";
			if(isDedicated) then {
				_name = format["SRV_OO_MRK_%1", _instanceid];
			} else {
				_name = format["%1_OO_MRK_%2", name player, _instanceid];				
			};

			MEMBER("name", _name);
			MEMBER("position", _this);
			MEMBER("local", false);
			MEMBER("dir", 0);
			MEMBER("alpha", 1);
			MEMBER("shape", "ICON");
			MEMBER("type", "Empty");
			MEMBER("brush", "Solid");
			MEMBER("color", "ColorBlack");
			MEMBER("size", [1,1]);
			MEMBER("text", "");
			MEMBER("draw", nil);
		};

		PUBLIC FUNCTION("","isAttached") FUNC_GETVAR("attached");
		PUBLIC FUNCTION("","isLocal") FUNC_GETVAR("local");
		PUBLIC FUNCTION("","getName") FUNC_GETVAR("name");
		PUBLIC FUNCTION("","getMarker") FUNC_GETVAR("marker");

		PRIVATE FUNCTION("", "draw") {
			private _mark = "";
			if!(MEMBER("isLocal", nil)) then {
				_mark = createMarker [MEMBER("name", nil), MEMBER("position", nil)];
				_mark setMarkerDir MEMBER("dir", nil);
				_mark setMarkerAlpha MEMBER("alpha", nil);
				_mark setMarkerShape MEMBER("shape", nil);
				_mark setMarkerType MEMBER("type", nil);
				_mark setmarkerbrush MEMBER("brush", nil);
				_mark setmarkercolor MEMBER("color", nil);
				_mark setmarkersize MEMBER("size", nil);
				_mark setmarkertext MEMBER("text", nil);
			} else {
				_mark = createMarkerlocal [MEMBER("name", nil), MEMBER("position", nil)];
				_mark setMarkerDirlocal MEMBER("dir", nil);
				_mark setMarkerAlphalocal MEMBER("alpha", nil);
				_mark setMarkerShapelocal MEMBER("shape", nil);
				_mark setMarkerTypelocal MEMBER("type", nil);
				_mark setmarkerbrushlocal MEMBER("brush", nil);
				_mark setmarkercolorlocal MEMBER("color", nil);
				_mark setmarkersizelocal MEMBER("size", nil);
				_mark setmarkertextlocal MEMBER("text", nil);
			};
			MEMBER("marker", _mark);
		};

		PRIVATE FUNCTION("", "undraw") {
			deletemarker MEMBER("marker", nil);
		};

		PUBLIC FUNCTION("string", "setName") {
			MEMBER("name", _this);
		};

		PUBLIC FUNCTION("bool", "setLocal") {
			MEMBER("local", _this);
			MEMBER("undraw", nil);
			MEMBER("draw", nil);
		};

		PUBLIC FUNCTION("","getShape") {
			MEMBER("shape", nil);
		};

		PUBLIC FUNCTION("string", "setShape") {
			MEMBER("shape", _this);
			if!(MEMBER("isLocal", nil)) then {
				MEMBER("marker", nil) setMarkerShape _this;
			} else {
				MEMBER("marker", nil) setMarkerShapelocal _this;
			};
		};

		PUBLIC FUNCTION("","getType") {
			MEMBER("type", nil);
		};

		PUBLIC FUNCTION("string", "setType") {
			MEMBER("type", _this);
			if!(MEMBER("isLocal", nil)) then {
				MEMBER("marker", nil) setMarkerType _this;
			} else {
				MEMBER("marker", nil) setMarkerTypelocal _this;
			};
		};

		PUBLIC FUNCTION("","getBrush") {
			MEMBER("brush", nil);
		};

		PUBLIC FUNCTION("string", "setBrush") {
			MEMBER("brush", _this);
			if!(MEMBER("isLocal", nil)) then {
				MEMBER("marker", nil) setmarkerbrush _this;
			} else {
				MEMBER("marker", nil) setMarkerBrushLocal _this;
				
			};
		};

		PUBLIC FUNCTION("","getColor") {
			MEMBER("color", nil);
		};

		PUBLIC FUNCTION("string", "setColor") {
			MEMBER("color", _this);
			if!(MEMBER("isLocal", nil)) then {
				MEMBER("marker", nil) setmarkercolor _this;
			} else {
				MEMBER("marker", nil) setMarkerColorLocal _this;
			};
		};

		PUBLIC FUNCTION("","getSize") {
			MEMBER("size", nil);
		};

		PUBLIC FUNCTION("array", "setSize") {
			MEMBER("size", _this);
			if!(MEMBER("isLocal", nil)) then {
				MEMBER("marker", nil) setmarkersize _this;
			} else {
				MEMBER("marker", nil) setmarkersizelocal _this;
			};
		};

		PUBLIC FUNCTION("","getText") {
			MEMBER("text", nil);
		};

		PUBLIC FUNCTION("string", "setText") {
			MEMBER("text", _this);
			if!(MEMBER("isLocal", nil)) then {
				MEMBER("marker", nil) setmarkertext _this;
			} else {
				MEMBER("marker", nil) setmarkertextlocal _this;
			};
		};

		PUBLIC FUNCTION("","getPos") {
			MEMBER("position", nil);
		};

		PUBLIC FUNCTION("array", "setPos") {
			MEMBER("position", _this);
			if!(MEMBER("isLocal", nil)) then {
				MEMBER("marker", nil) setMarkerPos _this;
			} else {
				MEMBER("marker", nil) setMarkerPosLocal _this;
			};
		};

		PUBLIC FUNCTION("","getAlpha") {
			MEMBER("alpha", nil);
		};

		PUBLIC FUNCTION("scalar", "setAlpha") {
			MEMBER("alpha", _this);
			if!(MEMBER("isLocal", nil)) then {
				MEMBER("marker", nil) setMarkerAlpha _this;
			} else {
				MEMBER("marker", nil) setMarkerAlphalocal _this;
			};
		};

		PUBLIC FUNCTION("","getDir") {
			MEMBER("dir", nil);
		};

		PUBLIC FUNCTION("scalar", "setDir") {
			MEMBER("dir", _this);
			if!(MEMBER("isLocal", nil)) then {
				MEMBER("marker", nil) setMarkerDir _this;
			} else {
				MEMBER("marker", nil) setMarkerDirlocal _this;
			};
		};

		PUBLIC FUNCTION("object", "attachTo") {
			MEMBER("attached", true);
			while {MEMBER("attached", nil)} do {
				MEMBER("setDir", getDir _this);
				MEMBER("setPos", position _this);
				sleep 0.1;
			};
		};

		PUBLIC FUNCTION("array", "attachToSector") {
			private _object = _this select 0;
			private _grid = _this select 1;
			private _position = [];

			MEMBER("attached", true);
			MEMBER("setDir", 0);
			
			while {MEMBER("attached", nil)} do {
				_position = ["getSectorCenterPos", position _object] call _grid;
				MEMBER("setPos", _position);
				sleep 1;
			};
		};

		PUBLIC FUNCTION("", "detach") {
			MEMBER("attached", false);
		};

		PUBLIC FUNCTION("array", "blink") {	
			private _duration = _this select 0;
			private _speed = _this select 1;
			private _count = floor(_duration / _speed);

			while {_count > 0} do {
				MEMBER("setAlpha", 0);
				sleep _speed/2;
				MEMBER("setAlpha", 1);
				sleep _speed/2;
				_count = _count - 1;
			};
		};

		PUBLIC FUNCTION("scalar", "fadeIn") {
			private _time = (_this / 100);
			private _fade = 0;
			for "_fade" from 0 to 1 step 0.01 do {
				MEMBER("setAlpha", _fade);
				sleep _time;
			};
		};

		PUBLIC FUNCTION("scalar", "fadeOff") {
			private _time = (_this / 100);
			private _fade = 0;
			for "_fade" from 1 to 0 step -0.01 do {
				MEMBER("setAlpha", _fade);
				sleep _time;
			};
		};


		PUBLIC FUNCTION("","deconstructor") { 
			MEMBER("undraw", nil);
			DELETE_VARIABLE("name");
			DELETE_VARIABLE("attached");
			DELETE_VARIABLE("marker");
			DELETE_VARIABLE("local");
			DELETE_VARIABLE("scalar","dir");
			DELETE_VARIABLE("scalar","alpha");
			DELETE_VARIABLE("string","shape");
			DELETE_VARIABLE("string","type");
			DELETE_VARIABLE("string","brush");
			DELETE_VARIABLE("string","color");
			DELETE_VARIABLE("array","size");
			DELETE_VARIABLE("string","text");
		};
	ENDCLASS;