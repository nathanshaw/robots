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
SnapperBot1 sb1;
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
Homados1 h1;
Homados2 h2;
Homados3 h3;
Homados4 h4;
Homados5 h5;
Homados6 h6;
Homados7 h7;
Homados8 h8;
Homados9 h9;
Homados10 h10;
MiniSteps1 ms1;
MiniSteps2 ms2;
MiniSteps3 ms3;
MiniSteps4 ms4;
MiniSteps5 ms5;
MiniSteps6 ms6;
MiniSteps7 ms7;
MiniSteps8 ms8;
MiniSteps9 ms9;
MiniSteps10 ms10;

while (true) {
    1::second => now;
}
