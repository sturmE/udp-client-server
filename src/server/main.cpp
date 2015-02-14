#include "../common/network/socket.h"
#include <iostream>
using namespace std;

const unsigned short SERVER_PORT = 7531;
const unsigned int MAX_PK_SIZE = 256;
const int PROTOCOL_ID = 1231231;

struct MsgHeader {
    int protocolId;    
};

int main(int argc, char** argv) {
    Socket socket;
    if(!socket.open(SERVER_PORT)) {
        return 0;
    }

    if(!socket.setBlocking(true)) {
        return 0;
    }

    Address sender;
    unsigned char data[MAX_PK_SIZE];
    while(true) {
        int bytesRead = socket.receive(sender, data, MAX_PK_SIZE);
        
        if(bytesRead <= 0) {
            cout << "bytesRead <= 0" << std::endl;
            continue;
        }
        
        if(bytesRead < sizeof(MsgHeader)) {
            cout << "bytesRead <= sizeof(MsgHeader)" << std::endl;
            continue;   
        }

        MsgHeader* header = (MsgHeader*)data;
        if(header->protocolId != PROTOCOL_ID) {
            cout << "bad protocolId" << std::endl;
            continue;      
        }

        cout << sender.toString() << std::endl;        
    }

}