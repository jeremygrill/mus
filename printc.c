#include <stdio.h>
#include <stdlib.h>
#include <string.h>


struct chord_node{
	int note;
	struct chord_node * next_note;
};

void print_chord(struct chord_node * list){
	
	struct chord_node * tmp = list;

	while(tmp != NULL){
		printf("[%d]", tmp->note);
		tmp = tmp->next_note;
	}
	
}
