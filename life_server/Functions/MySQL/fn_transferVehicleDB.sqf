/*
	Author: Nick Brown
	Description: Transfer vehicle in db
*/
private["_pid","_vid","_query","_sql"];
if(_pid == "" OR _vid == "") exitWith {};
_query = format["transferVehicle:1:%1:%2",_pid,_vid];
waitUntil {sleep (random 0.3); !DB_Async_Active};
[_query,1] call DB_fnc_asyncCall;