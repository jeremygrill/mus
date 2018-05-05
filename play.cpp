#include "MidiFile.h"
#include <iostream>
#include <cmath>

using namespace std;
using namespace smf;

extern "C" {
   int play(int musSeq);
}

int play(int musSeq)
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
/*
   // store a base line in track 2
   i=0;
   actiontime = 0;          // reset time for beginning of file
   midievent[2] = 64;
   while (bass[i] >= 0) {
      midievent[0] = 0x90;
      midievent[1] = bass[i];
      outputfile.addEvent(2, actiontime, midievent);
      actiontime += tpq * brhythm[i];
      midievent[0] = 0x80;
      outputfile.addEvent(2, actiontime, midievent);
      i++;
   }
*/
   //outputfile.sortTracks();         // make sure data is in correct order
   outputfile.write("themidi.mid"); // write Standard MIDI File twinkle.mid
   return 0;
}
/*int main(int argc, char** argv)
{
	int var = 0b00111100000000000000000000000000;

	std::cout << var << "\n";
	play(var);

	return 0;

}*/