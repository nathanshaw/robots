MidiIn korg;
MidiMsg msg;

SerialIO.list() @=> string list[];

for(int i; i < list.cap(); i++)
{
    chout <= i <= ": " <= list[i] <= IO.newline();
}

SerialIO cereal;
cereal.open(2, SerialIO.B57600, SerialIO.ASCII);

//dev two is usually it
int channel;
int value;
2 => int device;

int mbuttons[8];
int rbuttons[8];
int sbuttons[8];
[2,2,2,2,2,2,2,2] @=> int sliders[];
[50,50,50,50,50,50,50,50] @=> int knobs[];

//open midi receiver, exit on fail
if( !korg.open(0)){
    <<<"Problem connecting to MIDI device">>>;   
}

while(true)
{
    korg => now;   
    while(korg.recv(msg)){
        <<<msg.data1, msg.data2, msg.data3>>>;
        msg.data2 => channel;
        msg.data3 => value;
        if( channel < 8){
         (value/127 * 8)$int => sliders[channel];
        }
        else if (channel > 15 && channel < 24){
         value*2 + 2 => knobs[channel - 16];   
        }
        else if(channel > 31 && channel < 40 && value == 127){
            swipeBank((channel - 32)%4, knobs[(channel-32)%4]); 
        }
        else if(channel  > 47 && channel < 56 && value == 127){
         poundBank((channel - 48) % 4, sliders[(channel - 47)]);
        }
        else if (channel > 63 && channel < 72 && value == 127){
         allBanks(channel-63);   
        }
    }
    //swipeBank(Math.random2(0,3), Math.random2(10, 200));
    //allBanks(Math.random2(0,7));
    //flipSwitch(Math.random2(0,3),Math.random2(0,7));
    //poundBank(Math.random2(0,3), Math.random2(0,7));
    .4::second => now;
}

fun void allBanks(int level){
    cereal <= "V" <= level;
}

fun void flipSwitch(int bank, int swit){
    cereal <= "F" <= bank <= " " <= swit;
}

fun void poundBank(int bank, int switchNum){
    cereal <= "L" <= bank <= " " <= switchNum;
}

fun void swipeBank(int bank, int length){
    cereal <= "S" <= bank <= " " <= length;
}
