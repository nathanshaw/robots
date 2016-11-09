// MiniSteps.ck
// Nathan Villicana-Shaw
// CalArts Music Tech // MTIID4LIFE

public class MiniSteps1 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-20
    // MiniSteps are 21-30

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    21 => int ID;
    "/MiniSteps1" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class MiniSteps2 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-20
    // MiniSteps are 21-30

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    22 => int ID;
    "/MiniSteps2" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class MiniSteps3 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-20
    // MiniSteps are 21-30

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    23 => int ID;
    "/MiniSteps3" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class MiniSteps4 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-20
    // MiniSteps are 21-30

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    24 => int ID;
    "/MiniSteps4" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class MiniSteps5 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-20
    // MiniSteps are 21-30

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    25 => int ID;
    "/MiniSteps5" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class MiniSteps6 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-20
    // MiniSteps are 21-30

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    26 => int ID;
    "/MiniSteps6" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class MiniSteps7 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-20
    // MiniSteps are 21-30

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    27 => int ID;
    "/MiniSteps7" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class MiniSteps8 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-20
    // MiniSteps are 21-30

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    28 => int ID;
    "/MiniSteps8" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class MiniSteps9 extends SerialBot {
    // Brigid is 1-10
    // Homados is 11-20
    // MiniSteps are 21-30

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    29 => int ID;
    "/MiniSteps9" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}

public class MiniSteps10 extends SerialBot {
    // Brigid is 1-10
    // Homados is 10-20
    // MiniSteps are 21-30

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    30 => int ID;
    "/MiniSteps10" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}
