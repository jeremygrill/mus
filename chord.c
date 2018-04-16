#include <stdio.h>
#include <stdlib.h>
#include <string.h>


struct Chord{
	int note;
	int * nextNote;
};

struct Chord * getChord(){
	
	struct Chord * c1;	
	c1 = malloc(sizeof(struct Chord));
	c1->note = 2;
	c1->nextNote=NULL;

	return c1;
}

int main(){

	struct Chord * tmp = getChord();
	printf("%d\n", tmp->note);
	free(tmp);

	return 0;
}

