#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stack>


struct chord_node{
	int note;
	struct chord_node* next_note;
};

struct seq_node{
	struct chord_node* chord;
	struct seq_node* next_chord;
};

int printnote(int note){
	int n1, n2, n3;
	n1 = (note & 4294967295)/16777216;
	n2 = (note & 16777215)/65536;
	n3 = (note & 65535);
	printf("(%d,%d|%d)", n1, n2, n3);

	return 0;
}

extern "C" {
   int printn(int note);
}

int printn(int note){
	int n1, n2, n3;
	n1 = (note & 4294967295)/16777216;
	n2 = (note & 16777215)/65536;
	n3 = (note & 65535);
	printf("(%d,%d|%d)\n", n1, n2, n3);

	return 0;
}

extern "C" {
   int printc(struct chord_node* list);
}

int printc(struct chord_node* list){
	printf("[");

	std::stack <int> thestack;

	struct chord_node * tmp = list;
	while(tmp != NULL) {
		thestack.push(tmp->note);
		tmp = tmp -> next_note;
	}

	while(!thestack.empty()){
		printnote(thestack.top());
		thestack.pop();
	}

	printf("]\n");
	return 0;
}

int printchord(struct chord_node* list){
	printf("[");

	struct chord_node * tmp = list;
	while(tmp != NULL) {
		printnote(tmp->note);
		tmp = tmp -> next_note;
	}

	printf("]");
	return 0;
}

extern "C" {
   int prints(struct seq_node* list);
}

int prints(struct seq_node* list){
	printf("$(");

	std::stack <chord_node*> thestack;

	struct seq_node * tmp = list;
	while(tmp != NULL) {
		//printchord(tmp->chord);
		thestack.push(tmp->chord);
		tmp = tmp -> next_chord;
	}

	while(!thestack.empty()){
		printchord(thestack.top());
		thestack.pop();
	}

	printf(")\n");
	return 0;
}