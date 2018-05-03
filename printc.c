#include <stdio.h>
#include <stdlib.h>
#include <string.h>


struct chord_node{
	int note;
	struct chord_node* next_note;
};

int printnote(int note){
	int n1, n2, n3;
	n1 = (note & 4294967295)/16777216;
	n2 = (note & 16777215)/65536;
	n3 = (note & 65535);
	printf("(%d,%d|%d)", n1, n2, n3);

	return 0;
}

int printc(struct chord_node* list){
	printf("[");

	struct chord_node * tmp = list;
	while(tmp != NULL) {
		printnote(tmp->note);
		tmp = tmp -> next_note;
	}

	printf("]\n");
	return 0;
}
