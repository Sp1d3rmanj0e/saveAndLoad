// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Special thanks to navidcrt at https://www.youtube.com/@navidrct for the code
function sendListOverUDP(ip, port, data, type){
	
	// Connect to the server
	network_connect_raw(global.client, ip, port);
	
	// Encode the data
	array_insert(data, 0, type); // add the action command at the start of the array
	var dataJson = json_stringify(data); // Turn the ds_list into a string
	var data_size = string_byte_length(dataJson); // Get the byte size of the string
	show_debug_message("> " + dataJson);
	
	// Send the data
	var buffer = buffer_create(data_size, buffer_fixed, 1);
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_text, dataJson); // Add the data to the buffer
	network_send_udp_raw(global.client, ip, port, buffer, buffer_tell(buffer)); // Send the data to server
}