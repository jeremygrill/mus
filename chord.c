#include <stdio.h>
#include <stdlib.h>
#include <string.h>


struct Chord{
	int note;
	struct Chord * nextNote;
};

struct Chord * getChord(){
	
	struct Chord * c1;
	struct Chord * c2;	
	c1 = malloc(sizeof(struct Chord));
	c2 = malloc(sizeof(struct Chord));
	c1->note = 2;
	c1->nextNote=c2;	
	c2->note = 3;
	c2->nextNote=NULL;

	return c1;
}

int main(){

	struct Chord * tmp = getChord();
	printf("%d\n", tmp->note);
	struct Chord * c = tmp->nextNote;
	printf("%d\n", c->note);
	free(tmp);

	return 0;
}

