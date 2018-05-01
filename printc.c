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

	//struct chord_node * tmp = list;
	/*struct chord_node * a = list;
	struct chord_node * b = list;

	a -> next_note = b;
	a -> note = 9;
	b -> next_note = a;
	b -> note = 44;*/

	//printf("[%d]\n", a->next_note);
	if(list->next_note == NULL)
		printf("Nope");
	else 
	{
		printf("pointer %p\n", list);
		printf("note %d\n", list->note);

		printf("next %p\n", list->next_note);
		printf("next %d\n", list->next_note->note);

		//struct chord_node *tmp2 = list->next_note;
		//printf("%d\n", tmp2->note);	
		//printf("[%d]\n", list->next_note->note);
	}

	//while(tmp != NULL) {

	//printnote(tmp->note);
		
	printf("]\n");
	//} 
	return 0;
	
}
