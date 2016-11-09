// Homados.ck
// Nathan Villicana-Shaw
// CalArts Music Tech // MTIID4LIFE

public class Homados1 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-20
    // MiniSteps are 21-30

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    21 => int ID;
    "/Homados1" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class Homados2 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-20
    // MiniSteps are 21-30

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    22 => int ID;
    "/Homados2" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class Homados3 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-20
    // MiniSteps are 21-30

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    23 => int ID;
    "/Homados3" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class Homados4 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-20
    // MiniSteps are 21-30

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    24 => int ID;
    "/Homados4" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class Homados5 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-20
    // MiniSteps are 21-30

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    25 => int ID;
    "/Homados5" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class Homados6 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-20
    // MiniSteps are 21-30

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    26 => int ID;
    "/Homados6" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class Homados7 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-20
    // MiniSteps are 21-30

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    27 => int ID;
    "/Homados7" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class Homados8 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-20
    // MiniSteps are 21-30

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    28 => int ID;
    "/Homados8" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class Homados9 extends SerialBot {
    // Brigid is 1-10
    // Homados is 11-20
    // MiniSteps are 21-30

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    29 => int ID;
    "/Homados9" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class Homados10 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-20
    // MiniSteps are 21-30

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    30 => int ID;
    "/Homados10" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}
