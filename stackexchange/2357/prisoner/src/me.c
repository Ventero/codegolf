#include <stdio.h>
#include <string.h>

int main(int argc, char* argv[]) {
	if(argc == 1){
		printf("t\n");
		return 0;
	}
	switch (strlen(argv[1])) {
		case 0:
			printf("t\n");
			break;
		case 1:
		case 2:
			printf("c\n");
			break;
		default:
			printf("t\n");
			break;
	}

	return 0;
}

