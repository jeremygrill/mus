var Midi = require('./jsmidgen/lib/jsmidgen.js');
var fs = require('fs');

var file = new Midi.File();
var track = new Midi.Track();
file.addTrack(track);


/*
var Converter = function(config){
	if (!this) return new Converter(config);
	var c = config || {};
		this.events = c.events || [];
};

function Converter(data)
{
	this.id = data;
}

Converter.musConvert = function(musSeq){
	
	var note = musSeq;
	note = note & 4278190080;
	note /= Math.pow(2, 24);
	track.addNote(0, note , 64);
	track.setInstrument(0, 0x13);
	fs.writeFileSync('themidifile.mid', file.toBytes(), 'binary');
	return this;
	//var musFile = fs.openSync("ethan.txt", 'r');
	//fs.writeFileSync('functiontest.txt', musFile, 'binary');
}*/

function play(musSeq){
	var note = musSeq;
	note = note & 4278190080;
	note /= Math.pow(2, 24);
	//console.log(note);
	//var x = note;
	//console.log(x);
	track.addNote(0, note, 64);
	track.setInstrument(0, 0x13);
	fs.writeFileSync('themidifile.mid', file.toBytes(), 'binary');

	//var musFile = fs.openSync("ethan.txt", 'r');
	//fs.writeFileSync('functiontest.txt', musFile, 'binary');
}

//play(60);

//play(1694629891);




/*
track.addNote(0, 'c4', 64);
track.addNote(0, 'd4', 64);
track.addNote(0, 'e4', 64);
track.addNote(0, 'f4', 64);
track.addNote(0, 'g4', 64);
track.addNote(0, 'a4', 64);
track.addNote(0, 'b4', 64);
track.addNote(0, 'c5', 64);

track.setInstrument(0, 0x13);

track.addNoteOn(0, 'c4', 64);
track.addNoteOn(0, 'e4');
track.addNoteOn(0, 'g4');
track.addNoteOff(0, 'c4', 47);
track.addNoteOff(0, 'e4');
track.addNoteOff(0, 'g4');

track.addNoteOn(0, 'c4', 1);
track.addNoteOn(0, 'e4');
track.addNoteOn(0, 'g4');
track.addNoteOff(0, 'c4', 384);
track.addNoteOff(0, 'e4');
track.addNoteOff(0, 'g4');

fs.writeFileSync('themidifile.mid', file.toBytes(), 'binary');

file = new Midi.File();
file
	.addTrack()

		.addNote(0, 'c4', 32)
		.addNote(0, 'd4', 32)
		.addNote(0, 'e4', 32)
		.addNote(0, 'f4', 32)
		.addNote(0, 'g4', 32)
		.addNote(0, 'a4', 32)
		.addNote(0, 'b4', 32)
		.addNote(0, 'c5', 32)

		.setInstrument(0, 0x13)

		.addNoteOn(0, 'c4', 64)
		.addNoteOn(0, 'e4')
		.addNoteOn(0, 'g4')
		.addNoteOff(0, 'c4', 47)
		.addNoteOff(0, 'e4')
		.addNoteOff(0, 'g4')

		.addNoteOn(0, 'c4', 1)
		.addNoteOn(0, 'e4')
		.addNoteOn(0, 'g4')
		.addNoteOff(0, 'c4', 384)
		.addNoteOff(0, 'e4')
		.addNoteOff(0, 'g4')
		;

fs.writeFileSync('test2.mid', file.toBytes(), 'binary');*/
