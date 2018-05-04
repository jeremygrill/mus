#include <stdio.h>
#include <stdlib.h>
#include <string.h>


struct chord_node{
	int note;
	struct chord_node * next_note;
};

int printc(struct chord_node * list){
	
	struct chord_node * tmp = list;

	while(tmp != NULL){
		printf("[%d]", tmp->note);
		if(tmp->next_note != NULL){
			tmp = tmp->next_note;
		}
	}
	return 0;
	
}

