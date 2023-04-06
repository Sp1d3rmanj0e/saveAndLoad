/// @description Save Data

// Store the leaderboard into a single array
var _saveData = [obj_leaderboard.topTimeCompleted, obj_leaderboard.topSenseUseTime];

// Send the data to the server
sendListOverUDP(global.ip, 8080, _saveData, msgType.STORE_DATA);