#pragma once
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <string.h>
#include <sys/ioctl.h>
#include <pthread.h>
#include <iostream>
#include "../common/util.h"
#include "../common/network_messages.h"
#include "../common/network/net_socket.h"

const uint MAX_CLIENTS = 10;
const uint PORT_NUMBER = 7531;

struct ClientType {
    bool online;
    struct sockaddr_in address;
};

class Network {
private:
    NetSocket _netSocket;    
    bool _online;
    ClientType _clients[MAX_CLIENTS];
public:
    Network();
    ~Network();
    
    int serverSocket();
    bool isOnline();
    bool setupNetwork();
    void readNetworkMessage(char* buffer, SourceInfo source);
private:
    static void* serverListenFunc(void* context);
};


