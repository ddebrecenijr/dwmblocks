//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
    {"",        "brightness.sh",            0,                  11},
    {"",        "volume.sh",                0,                  10},
	{"",		"battery.sh",		        5,			        3},
	{"",		"datetime.sh",		        60,			        0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = ' ';
