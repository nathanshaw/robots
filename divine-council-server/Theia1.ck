// Theia.ck
// Nathan Villicana-Shaw

public class Theia1 extends SerialBot {
    // Brigid is 1-10 and 31-40
    // Homados is 10-20
    // Hermes is 21-30
    // Theia is 51-60

    // MIDI notes
    [60,61,62,63,64,65] @=> int scl[];

    rescale(scl);

    53 => int ID;
    "/theia1" => string address;
    IDCheck(ID, address) => int check;
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}
