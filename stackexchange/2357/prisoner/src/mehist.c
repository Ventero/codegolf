#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int main(int argc, char* argv[]) {
	if(argc == 1){
		printf("t\n");
		return 0;
	}

	size_t i, l = strlen(argv[1]);

	if(l < 3){
		if(l == 1) printf("c\n");
		else if(l == 2) printf("c\n");
	}

	unsigned int k = 0, r = 0, e = 0, s = 0;
	int t = 0;
	for(i = 0; i < l; i++){
		if(argv[1][i] == 'K') k++;
		else if(argv[1][i] == 'E') e++;
		else if(argv[1][i] == 'S') s++;
		else if(argv[1][i] == 'R') r++;
	}

	float p = (float)(k+s)/l;
	if(p < 0.70 || argv[1][0] == 'S' || argv[1][0] == 'K')
		printf("t\n");
	else
		printf("c\n");

	return 0;
}

