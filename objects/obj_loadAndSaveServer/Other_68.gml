/// @description Insert description here
// You can write your code in this editor

if (async_load[? "size"] > 0) && (global.ip != noone)
{
	var _buffer = async_load[? "buffer"];
	buffer_seek(_buffer, buffer_seek_start, 0);
	var _data = buffer_read(_buffer, buffer_string);
	
	show_debug_message(_data);
	var _dataDecoded = json_parse(_data);
	show_debug_message("< " + string(_dataDecoded));
	
	// _data[command, topTimeCompleted, topSenseUseTime]
	obj_leaderboard.topTimeCompleted = _dataDecoded[1];
	obj_leaderboard.topSenseUseTime = _dataDecoded[2];
	
}

// Thanks to https://www.reddit.com/r/gamemaker/comments/27yoe1/gms_networking_how_to_get_clients_local_ipv4/
// for the information
global.ip = string(ds_map_find_value(async_load, "ip")); // Get the ip of the user