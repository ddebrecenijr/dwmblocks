//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
    {"",        "datetime.sh",              60,                  3},
    {"",        "battery.sh",               120,                 2},
    {"",        "internet.sh",              30,                  5},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = ' ';
