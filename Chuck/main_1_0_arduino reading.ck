MidiIn min[16];


SerialIO.list() @=> string list[];

for(int i; i < list.cap(); i++)
{
    chout <= i <= ": " <= list[i] <= IO.newline();
}

SerialIO cereal[list.cap()];
//cereal.open(2, SerialIO.B57600, SerialIO.ASCII);

//dev two is usually it
int channel;
float value;
int midiDevices;
int arduinoDevices;
int arduino;

int mbuttons[8];
int rbuttons[8];
int sbuttons[8];

[2.0,2.0,2.0,2.0,2.0,2.0,2.0,2.0] @=> float sliders[];
[50.0,50.0,50.0,50.0,50.0,50.0,50.0,50.0] @=> float knobs[];

//open midi receiver, exit on fail
for( int i; i < min.cap(); i++ )
{
    // no print err
    min[i].printerr( 0 );
    
    // open the device
    if( min[i].open( i ) )
    {
        <<< "MIDIdevice", i, "->", min[i].name(), "->", "open: SUCCESS" >>>;
        spork ~ poller( min[i], i );
        midiDevices++;
    }
    else break;
}
//open arduino receiver, exit on fail
for( int i; i < cereal.cap(); i++ )
{
    // no print err
    //cereal[i].printerr( 0 );
    // open the device
    if( cereal[i].open( i, SerialIO.B57600, SerialIO.ASCII) )
    {
        <<< "Arduinodevice", i, "->", min[i].name(), "->", "open: SUCCESS" >>>;
        i => arduino;
        arduinoDevices++;
    }
    else break;
}
// check
if( midiDevices == 0 )
{
    <<< "um, couldn't open a single MIDI device, bailing out..." >>>;
    me.exit();
}

fun void allBanks(int level){
    cereal[arduino] <= "V" <= " " <= level <= "=" <= "`" <= "{" <= "\n";
}

fun void flipSwitch(int bank, int swit){
    cereal[arduino] <= "F" <= " " <= bank <= "=" <= swit <= "{" <= "\n";
}

fun void poundBank(int bank, int switchNum){
    cereal[arduino] <= "L" <= " " <= bank <= "=" <= switchNum <= "{" <= "\n";
}

fun void swipeBank(int bank, int length){
    for(0 => int i; i < 8; i++){
        cereal[arduino] <= "F" <= " " <= bank <= "=" <= i <= "{" <= "\n";
        length::ms => now;
    }
}


fun void poller(MidiIn min, int id){
    
    MidiMsg msg;
    while( true )
    {
        min => now;
        while(min.recv(msg)){
            
            <<<msg.data1, msg.data2, msg.data3>>>;
            msg.data2 => channel;
            msg.data3 => value;
            
            if( channel < 8){
                <<<(((value/127) * 7) + 1)>>>;
                Std.ftoi(((value/127) * 7) + 1) => sliders[channel];
            }
            else if (channel > 15 && channel < 24){
                value*2 + 2 => knobs[channel - 16];   
            }
            else if(channel > 31 && channel < 40 && value == 127){
                spork ~swipeBank((channel - 32)%4, Std.ftoi(knobs[(channel-32)])); 
            }
            else if(channel  > 47 && channel < 56 && value == 127){
                spork ~poundBank((channel - 48)%4, Std.ftoi(sliders[(channel - 48)]));
            }
            else if (channel > 63 && channel < 72 && value == 127){
                spork ~allBanks(channel-63);   
            }
        }
    }
}

while(true)
{
    //swipeBank(Math.random2(0,3), Math.random2(10, 200));
    //allBanks(Math.random2(0,7));
    //flipSwitch(Math.random2(0,3),Math.random2(0,7));
    //poundBank(Math.random2(0,3), Math.random2(0,7));
    93::ms => now;
}
