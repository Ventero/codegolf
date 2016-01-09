#include <stdio.h>
#include <string.h>

int main(int argc, char* argv[]) {
	if(argc == 1){
		printf("c\n");
		return 0;
	}

	if(strlen(argv[1]) < 2)
		printf("c\n");
	else if(argv[1][1] == 'R' || argv[1][2] == 'R' || argv[1][1] == 'S')
		printf("t\n");
	else if(argv[1][1] == 'K' || argv[1][2] == 'K')
		printf("c\n");


	printf("t\n");

	return 0;
}

