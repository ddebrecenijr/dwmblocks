//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
    {"",        "internet.sh",              5,                  4},
    {"",        "volume.sh",                0,                  10},
	{"",		"battery.sh",		        5,			        3},
	{"",		"datetime.sh",		        60,			        0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = ' ';
