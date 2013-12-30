#pragma once

#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <string.h>
#include <sys/ioctl.h>
#include <iostream>
#include "source_info.h"

#define MAX_PACKET_SIZE (256)
#define RECV_BUFFER_SIZE (MAX_PACKET_SIZE * 512)

class NetSocket {
private:
    int _socket;    
    struct sockaddr_in _boundAddress;
    bool _isBound;
public:
    NetSocket();
    ~NetSocket();

    bool setupSocket(int port);
    bool bindSocket(struct sockaddr_in address);
    bool isBound();
    bool setBlocking(bool isBlocking);
    bool sendTo(char* buffer, int len, struct sockaddr_in dest);
    bool recieveFrom(int& bytesRead, char* buffer, int len, SourceInfo& source);
};