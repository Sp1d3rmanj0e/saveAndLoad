/// @description Insert description here
// You can write your code in this editor

for (var categories = 0; categories < 2; categories++) {
for (var diffs = 0;      diffs < 4;      diffs++)      {
for (var panels = 0;     panels < 12;    panels++)     {
	
	// Time to completion
	if (categories == 0)
	{
		// Name
		topTimeCompleted[diffs][panels][0] = string(irandom(111)+1);
		
		// Value
		topTimeCompleted[diffs][panels][1] = number_to_time(irandom(1111)/100, true);
	}
	else
	{
		// Name
		topSenseUseTime[diffs][panels][0] = string(irandom(111)+1);
		
		// Value
		topSenseUseTime[diffs][panels][1] = number_to_time(irandom(11)+1, true);
	}
}}}