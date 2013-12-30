#include "../common/network/net_socket.h"
#include "../common/network/socket.h"
#include "../common/network_messages.h"
#include <string>
static char SERVER_ADDRESS[] = "127.0.0.1";
const unsigned short SERVER_PORT = 7531;

int main(int argc, char** argv) {
    Socket socket;
    if( !socket.open(0) ) return 0;

    
    char data[] = "Holla";
    if( !socket.send(Address(127, 0, 0, 1, SERVER_PORT), data, sizeof(data)) ) {
        std::cout << "that didnt work" << std::endl;
    }


/*



    NetSocket socket;
    socket.setupSocket(SERVER_PORT);

    struct sockaddr_in dest;
    memset((char *) &dest, 0, sizeof(dest));
    dest.sin_family = AF_INET;
    dest.sin_port = htons(SERVER_PORT);
    if (inet_aton(SERVER_ADDRESS, &dest.sin_addr)==0) {
        std::cout << "failed to set ip\n";
        return 0;
    }


    bool quit = false;
    char buffer[512];
    std::string s;
     MSG_GENERIC_DATA msg;
    while(!quit) {
        std::cout << "'1' Connect\n'2' Ping\n'3' Disconnect\n'q; - quit\n";
        std::cin >> s;
        if(s.compare("1") == 0) {
            msg.type = MSG_CONNECT;
        } else if(s.compare("2") == 0) {
            msg.type = MSG_PING;
        } else if(s.compare("3") == 0) {
            msg.type = MSG_DISCONNECT;
        } else if(s.compare("q") == 0) {
            quit = true;
            continue;
        }

        socket.sendTo((char*)&msg, sizeof(msg), dest);
    }*/

    return 0;
}