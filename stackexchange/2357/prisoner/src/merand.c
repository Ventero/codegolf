#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int main(int argc, char* argv[]) {
	if(argc == 1){
		printf("t\n");
		return 0;
	}

	srandom(time(0)+getpid());

	switch (strlen(argv[1])) {
		case 0:
			printf("t\n");
			break;
		case 1:
		case 2:
			printf("c\n");
			break;
		default:
			if (argv[1][0] == 'K' || ((float)random()/RAND_MAX < 0.4))
				printf("c\n");
			else
				printf("t\n");
			break;
	}

	return 0;
}

