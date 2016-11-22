// master.ck
// based on code written by Eric Heep
// CalArts Music Tech // MTIID4LIFE

// communication classes
Machine.add(me.dir() + "/Handshake.ck");
Machine.add(me.dir() + "/HandshakeID.ck");
Machine.add(me.dir() + "/SerialBot.ck");

// add robots here
Machine.add(me.dir() + "/Theia1.ck");
Machine.add(me.dir() + "/Theia2.ck");
Machine.add(me.dir() + "/Theia3.ck");

// main program
Machine.add(me.dir() + "/main.ck");
7.0::second => now;
<<< "-", "" >>>;
