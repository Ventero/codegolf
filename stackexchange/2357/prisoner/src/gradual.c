#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int main(int argc, char* argv[]) {
	if(argc == 1){
		printf("c\n");
		return 0;
	}
	size_t i, l = strlen(argv[1]);
	size_t currentSequence = 0;
	size_t totalDefects = 0;
	size_t lastDefects = 0;

	for(i = 0; i < l && (argv[1][i] == 'S' || argv[1][i] == 'E'); i++){
		// current defect sequence
		if(argv[1][i] == 'E') totalDefects++;
		currentSequence++;
	}

	for(; i < l; i++){
		// amount of opponent's defects before current defect sequence started
		if(argv[1][i] == 'E' || argv[1][i] == 'R') {
			lastDefects++;
		}
	}

	if(currentSequence < lastDefects)
		// continue defect sequence
		printf("t\n");
	else if(argv[1][0] == 'S' || argv[1][0] == 'E')
		// finished defect sequence last round, cooperate
		printf("c\n");
	else if(argv[1][1] == 'S' || argv[1][1] == 'E')
		// second blind cooperation
		printf("c\n");
	else if(argv[1][0] == 'R')
		// start new defect sequence
		printf("t\n");
	else
		printf("c\n");

	return 0;
}

