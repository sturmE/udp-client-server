#include "net_socket.h"

NetSocket::NetSocket() {
    _socket = 0;
    _isBound = false;
}

NetSocket::~NetSocket() {
    //close socket
}


bool NetSocket::setupSocket(int port) {
    int err = 0;
    _socket = socket(AF_INET, SOCK_DGRAM, 0);
    if(_socket == -1) {
        std::cout << "Error:  Failed to create socket." << std::endl;
        return false;
    }

    setBlocking(false);

    return true;    
}

bool NetSocket::setBlocking(bool isBlocking) {
    int setting = isBlocking ? 1 : 0;
    int error = ioctl(_socket, FIONBIO, &setting);
    if(error == -1) {
        std::cout << "Error: Could not set socket to non-blocking I/O." << std::endl;
        return false;
    }
    return true;
}

bool NetSocket::isBound() {
    return _isBound;
}

bool NetSocket::bindSocket(struct sockaddr_in address) {    
    int err = bind(_socket, (struct sockaddr*)&address, sizeof(address));    
    if(err == -1) {
        std::cout << "Error: Could not bind socket" << std::endl;   
        return false;
    }
    _boundAddress = address;
    return true;
}

bool NetSocket::sendTo(char* buffer, int len, struct sockaddr_in dest) {
    std::cout << "Sending packet\n";

    int error = sendto(_socket, (const char*)buffer, len, 0, (struct sockaddr*)&dest, sizeof(dest));
    if(error == -1) {
        std::cout << "Failed to send packet" << std::endl;   
        return false;
    }
    return true;
}

bool NetSocket::recieveFrom(int& bytesRead, char* buffer, int len, SourceInfo& source) {    
    struct sockaddr_in src;
    unsigned int srcLen = sizeof(src);

    bytesRead = recvfrom(_socket, buffer, len, 0, (struct sockaddr*)&src, &srcLen);
    if(bytesRead == -1) {
        std::cout << "Failed to recieve" << std::endl;   
        return false;
    }

    source.ipAddress = inet_ntoa(src.sin_addr);

    return true;
}
