#include "MidiFile.h"
#include <iostream>
#include <cmath>

using namespace std;
using namespace smf;

struct chord_node{
   int note;
   struct chord_node* next_note;
};

struct seq_node{
   struct chord_node* chord;
   struct seq_node* next_chord;
   
};

extern "C" {
   int playn(int musSeq);
}

int playn(int musSeq)
{
   MidiFile outputfile;        // create an empty MIDI file with one track
   outputfile.absoluteTicks();  // time information stored as absolute time
                               // (will be coverted to delta time when written)
   outputfile.addTrack(1);     // Add another two tracks to the MIDI file
   vector<uchar> midievent;     // temporary storage for MIDI events
   midievent.resize(3);        // set the size of the array to 3 bytes
   int tpq = 120;              // default value in MIDI file is 48
   outputfile.setTicksPerQuarterNote(tpq);


   int x = musSeq;
   x = x & 0b11111111000000000000000000000000;    
   double exponent = pow(2.0, 24);	
   x = x / exponent;

   // data to write to MIDI file: (60 = middle C)
   // C5 C  G G A A G-  F F  E  E  D D C-
   int melody[50]  = {x,-1};
   int mrhythm[50] = { 1,-1};

   // C3 C4 E C F C E C D B3 C4 A3 F G C-
   int bass[50] =   {48,60,64,60,65,60,64,60,62,59,60,57,53,55,48,-1};
   int brhythm[50]= { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2,-1};


   // store a melody line in track 1 (track 0 left empty for conductor info)
   int i=0;
   int actiontime = 0;      // temporary storage for MIDI event time
   midievent[2] = 64;       // store attack/release velocity for note command
   while (melody[i] >= 0) {
      midievent[0] = 0x90;     // store a note on command (MIDI channel 1)
      midievent[1] = melody[i];
      //std::cout << midievent[1] << "\n";
      outputfile.addEvent(1, actiontime, midievent);
      actiontime += tpq * mrhythm[i];
      midievent[0] = 0x80;     // store a note on command (MIDI channel 1)
      outputfile.addEvent(1, actiontime, midievent);
      i++;
   }

   //outputfile.sortTracks();         // make sure data is in correct order
   outputfile.write("themidi.mid"); // write Standard MIDI File twinkle.mid
   return 0;
}



extern "C" {
   int playc(struct chord_node* list);
}

int playc(struct chord_node* list)
{
   MidiFile outputfile;        // create an empty MIDI file with one track
   outputfile.absoluteTicks();  // time information stored as absolute time
                               // (will be coverted to delta time when written)
   outputfile.addTrack(1);     // Add another two tracks to the MIDI file
   vector<uchar> midievent;     // temporary storage for MIDI events
   midievent.resize(3);        // set the size of the array to 3 bytes
   int tpq = 120;              // default value in MIDI file is 48
   outputfile.setTicksPerQuarterNote(tpq);


   //while(tmp != NULL) {
      //tmp = tmp -> next_note;
   //}

   chord_node * tmp = list;
   chord_node * tmp2 = list;

/*
   int count = 0;
   while(tmp2){
      tmp2 ++;
      count ++;
   }
   */

   int melody[150];
   int mrhythm[150];
   int j = 0;

   while(tmp){
      int x = tmp->note;
      x = x & 0b11111111000000000000000000000000;    
      double exponent = pow(2.0, 24);  
      x = x / exponent;
      melody[j] = x;
      mrhythm[j] = 1;       
      tmp = tmp->next_note;
      j++;
}

//0b1111111111111111   duration
//0b111111110000000000000000  velocity, bitshift right 16 times

   melody[j+1] = -1;
   mrhythm[j+1] = -1;

   // C3 C4 E C F C E C D B3 C4 A3 F G C-
   int bass[50] =   {48,60,64,60,65,60,64,60,62,59,60,57,53,55,48,-1};
   int brhythm[50]= { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2,-1};


   // store a melody line in track 1 (track 0 left empty for conductor info)
   int i=0;
   int actiontime = 0;      // temporary storage for MIDI event time
   midievent[2] = 64;       // store attack/release velocity for note command
  
   /*
   while (melody[i] >= 0) {
      midievent[0] = 0x90;     // store a note on command (MIDI channel 1)
      midievent[1] = melody[i];
      outputfile.addEvent(1, actiontime, midievent);
      //actiontime += tpq * mrhythm[i];
      midievent[0] = 0x80;     // store a note on command (MIDI channel 1)
      outputfile.addEvent(1, actiontime, midievent);
      i++;
   }
*/

   while (melody[i] >= 0){
      midievent[0] = 0x90;
      midievent[1] = melody[i];
      outputfile.addEvent(1, actiontime, midievent);
      i++;
   }
   actiontime = tpq;
   midievent[0] = 0x80;
   outputfile.addEvent(1, actiontime, midievent);

   outputfile.sortTracks();         // make sure data is in correct order
   outputfile.write("themidi2.mid"); // write Standard MIDI File 
   return 0;
}

extern "C" {
   int plays(struct seq_node* list);
}

int plays(struct seq_node* list)
{
   MidiFile outputfile;        // create an empty MIDI file with one track
   outputfile.absoluteTicks();  // time information stored as absolute time
                               // (will be coverted to delta time when written)
   outputfile.addTrack(1);     // Add another two tracks to the MIDI file
   vector<uchar> midievent;     // temporary storage for MIDI events
   midievent.resize(3);        // set the size of the array to 3 bytes
   int tpq = 120;              // default value in MIDI file is 48
   outputfile.setTicksPerQuarterNote(tpq);

   seq_node * stmp = list;

   chord_node * tmp;
   //chord_node * tmp2 = tmp;

//0b1111111111111111   duration
//0b111111110000000000000000  velocity, bitshift right 16 times
   

   while(stmp){

      tmp = stmp->chord;
      
      int melody[150];
      int mrhythm[150];
      int j = 0;
      int velocity;
      
      while(tmp){
          int pitch = tmp->note;
          pitch = pitch & 0b11111111000000000000000000000000;    
          double exponent = pow(2.0, 24);  
          pitch = pitch / exponent;

          int duration = tmp->note;
          duration = duration & 0b1111111111111111;
          duration = duration / exponent;

          int v = tmp->note;
          v = v & 0b111111110000000000000000;
          v = v>>16;
          

          melody[j] = pitch;
          mrhythm[j] = duration;
          velocity = v;       
          tmp = tmp->next_note;
          j++;
      }

      melody[j+1] = -1;
      mrhythm[j+1] = -1;

      int q = 0;
      int longest_duration = 0;
      while(mrhythm[q] >= 0){
         if(mrhythm[q] > longest_duration)
            longest_duration = mrhythm[q];
         q++;
      }


      // store a melody line in track 1 (track 0 left empty for conductor info)
      int i=0;
      int actiontime = 0;      // temporary storage for MIDI event time
     // int actiontime = longest_duration;
      midievent[2] = velocity;       // store attack/release velocity for note command
  

      while (melody[i] >= 0){
         midievent[0] = 0x90;
         midievent[1] = melody[i];
         outputfile.addEvent(1, actiontime, midievent);
         i++;
      }
      actiontime += tpq * longest_duration;
      midievent[0] = 0x80;
      outputfile.addEvent(1, actiontime, midievent);

      stmp = stmp->next_chord;
   }

   

//0b1111111111111111   duration
//0b111111110000000000000000  velocity, bitshift right 16 times


   

   //outputfile.sortTracks();         // make sure data is in correct order
   outputfile.write("themidi3.mid"); // write Standard MIDI File 
   return 0;
}


