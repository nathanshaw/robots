// Theia2.ck
// Nathan Villicana-Shaw

public class Theia2 extends SerialBot{
    // Brigid is 1-10 and 31-40
    // Homados is 10-20
    // Hermes is 21-30
    // Theia is 51-60

    // MIDI notes
    [0,1,2,3,4,5] @=> int scl[];

    rescale(scl);

    52 => int ID;
    "/theia2" => string address;
    IDCheck(ID, address) => int check;
    // if a message comes in to the bot, return the distances
    if (check >= 0) {
        spork ~ oscrecv(check, address);
    }
}
