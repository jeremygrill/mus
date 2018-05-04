#include <stdio.h>
#include <stdlib.h>
#include <string.h>


struct chord_node{
	int note;
	struct chord_node * next_note;
};

struct chord_node * chordbuilder(int a, int b){
	struct chord_node * answerptr1 = malloc(sizeof(struct chord_node));
	struct chord_node * answerptr2 = malloc(sizeof(struct chord_node));
	answerptr1->note = a;
	answerptr1->next_note = answerptr2;
	answerptr2->note = b;
	answerptr2->next_note = NULL;
	return 0;

}