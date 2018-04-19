var Midi = require('./jsmidgen/lib/jsmidgen.js');
var fs = require('fs');
var args = process.argv.slice(2);
var musSeq = args[0];

var file = new Midi.File();
var track = new Midi.Track();
file.addTrack(track);


function play(musSeq){
	var note = musSeq;
	console.log(note);
	note = note & 4278190080;
	console.log(note);
	note /= Math.pow(2, 24);
	console.log(note);
	track.addNote(0, note, 64);
	track.setInstrument(0, 0x13);
	fs.writeFileSync('themidifile.mid', file.toBytes(), 'binary');
}
play(musSeq);