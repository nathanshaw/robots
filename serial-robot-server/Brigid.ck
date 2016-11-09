// Brigid.ck
// Nathan Villicana-Shaw
// CalArts Music Tech // MTIID4LIFE

public class Brigid1 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-19

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    1 => int ID;
    "/brigid1" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class Brigid2 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-19

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    2 => int ID;
    "/brigid2" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class Brigid3 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-19

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    3 => int ID;
    "/brigid3" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class Brigid4 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-19

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    4 => int ID;
    "/brigid4" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class Brigid5 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-19

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    5 => int ID;
    "/brigid5" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class Brigid6 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-19

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    6 => int ID;
    "/brigid6" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class Brigid7 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-19

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    7 => int ID;
    "/brigid7" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class Brigid8 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-19

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    8 => int ID;
    "/brigid8" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class Brigid9 extends SerialBot {
    // Brigid is 1-10
    // Homados is 11-20

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    9 => int ID;
    "/brigid9" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class Brigid10 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-19

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    10 => int ID;
    "/brigid10" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}
