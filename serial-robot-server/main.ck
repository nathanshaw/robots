// main.ck
// CalArts Music Tech // MTIID4LIFE

// give it some time to breathe
HandshakeID talk;
0.5::second => now;

// initial handshake between ChucK and Arduinos
talk.talk.init();
1::second => now;

<<< "Handshakes done" >>>;
// bring on the bots
Brigid1 b1;
Brigid2 b2;
Brigid3 b3;
Brigid4 b4;
Brigid5 b5;
Brigid6 b6;
Brigid7 b7;
Brigid8 b8;
Brigid9 b9;
Brigid10 b10;

/*
Homados1 homados1;
Homados2 homados2;
Homados3 homados3;
Homados4 homadoes4;
Homados5 homados5;
Homados6 homados6;
Homados7 homados7;
Homados8 homados8;
Homados9 homados9;
Homados10 homados10;
*/

Hermes1 hermes1;
Hermes2 hermes2;

/*
Hermes3 hermes3;
Hermes4 hermes4;
Hermes5 hermes5;
Hermes6 hermes6;
Hermes7 hermes7;
Hermes8 hermes8;
Hermes9 hermes9;
Hermes10 hermes10;
*/

while (true) {
    1::second => now;
}
