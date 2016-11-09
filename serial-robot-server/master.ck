// master.ck
// based on code written by Eric Heep
// CalArts Music Tech // MTIID4LIFE

// communication classes
Machine.add(me.dir() + "/Handshake.ck");
Machine.add(me.dir() + "/HandshakeID.ck");
Machine.add(me.dir() + "/SerialBot.ck");

// add robots here
Machine.add(me.dir() + "/Brigid.ck");
Machine.add(me.dir() + "/Homados.ck");
Machine.add(me.dir() + "/MiniSteps.ck");
Machine.add(me.dir() + "/SnapperBots.ck");

// main program
Machine.add(me.dir() + "/main.ck");
7.0::second => now;
<<< "-", "" >>>;

// osc test
// Machine.add(me.dir() + "/local_tester.ck");
