#include "../common/network/socket.h"
#include <string>
#include <iostream>

const int PROTOCOL_ID = 1231231;
static char SERVER_ADDRESS[] = "255.255.255.255";
const unsigned short SERVER_PORT = 7531;

struct MsgHeader {
    int protocolId;    
};

int main(int argc, char** argv) {
    Socket socket;
    if(!socket.open(0) ) return 0;
    if(!socket.setBroadcast(1)) return 0;
        
    MsgHeader msg;
    msg.protocolId = PROTOCOL_ID;
    if( !socket.send(Address(SERVER_ADDRESS, SERVER_PORT), &msg, sizeof(msg)) ) {
        std::cout << "that didnt work" << std::endl;
    }



    return 0;
}