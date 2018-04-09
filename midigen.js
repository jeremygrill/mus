var Midi = require('./jsmidgen/lib/jsmidgen.js');
var fs = require('fs');

var file = new Midi.File();
var track = new Midi.Track();
file.addTrack(track);

function play(musSeq){
	var note = musSeq;
	note = note & 4278190080;
	note /= Math.pow(2, 24);
	track.addNote(0, note, 64);
	track.setInstrument(0, 0x13);
	fs.writeFileSync('themidifile.mid', file.toBytes(), 'binary');
}
//play(60);
