#include <stdio.h>
#include <time.h>

int hanoi_algorithm(short date) {
	unsigned char mask = 1;
	while (mask <= 365) {
		if (date & mask) {
			return mask;
		}
		mask = mask << 1;
	}
	return 0;
}

int main(int argc, char *argv[])
{
	time_t now = time(NULL);
	struct tm *local;
	local = localtime(&now);
	int disp;
	//short date;

	switch (argc) {
	case 1:
		disp = hanoi_algorithm(local->tm_mday);
		break;
	case 2:
		//date = *argv[1];
		disp = hanoi_algorithm((short) *argv[1]);
		break;
	}
	printf("%d", disp);
}
