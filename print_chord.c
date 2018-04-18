#include <stdio.h>
#include <stdlib.h>
#include <string.h>


struct chord_node{
	int note;
	struct chord_node * next_note;
};

void print_chord(struct chord_node * list){
	
	struct chord_node * tmp = list;

	int n1 = 1;
	int n2 = 2;
	int n3 = 3;
	
	while(tmp != NULL){
		printf("(%d,%d|%d)", n1,n2,n3);
		tmp = tmp->next_note;
	}
	
}
