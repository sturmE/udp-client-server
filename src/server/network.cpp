#include "network.h"

Network::Network() {
    _online = false;    
    memset(_clients, 0, sizeof(ClientType) * MAX_CLIENTS);
}

Network::~Network() {

}



bool Network::isOnline() {
    return _online;
}

bool Network::setupNetwork() {
    pthread_t serverThreadId;
    int error;
    
    if(!_netSocket.setupSocket(PORT_NUMBER)) {
        std::cout << "Failed to setup socket" << std::endl;
        return false;
    }

    struct sockaddr_in serverAddress;
    memset((char*)&serverAddress, 0, sizeof(serverAddress));
    serverAddress.sin_family = AF_INET;
    serverAddress.sin_port = htons(PORT_NUMBER);
    serverAddress.sin_addr.s_addr = htonl(INADDR_ANY);

    if(!_netSocket.bindSocket(serverAddress)) {
        std::cout << "Failed to bind socket" << std::endl;
        return false;
    }
    
    // Create a thread to listen for and accept incoming connections from clients.
    error = pthread_create(&serverThreadId, NULL,  Network::serverListenFunc, this);
    if(error != 0) {
        std::cout << "Error: Could not create thread." << std::endl;
        return false;
    }

    _online = true;
    return true;
}

void Network::readNetworkMessage(char* buffer, SourceInfo clientAddress) {
    char* ipAddress;
    MSG_GENERIC_DATA* message;


    // Store the IP address of the person who sent a message.
    ipAddress = clientAddress.ipAddress;

    // Coerce the message into a generic format to read the type of message.
    message = (MSG_GENERIC_DATA*)buffer;

    switch(message->type) {
    case MSG_CONNECT:
        {
            std::cout << ipAddress << " sent a connect message." << std::endl;          
            break;
        }
    case MSG_PING:
        {
            std::cout << ipAddress << " sent a ping message." << std::endl;
            break;
        }
    case MSG_DISCONNECT:
        {
            std::cout << ipAddress << " sent a disconnect message." << std::endl;
            break;
        }
    default:
        {
            std::cout << ipAddress << " sent an unkown message." << std::endl;
            break;
        }
    }
}

void* Network::serverListenFunc(void* context) {
    Network* network = static_cast<Network*>(context);

    int bytesRead;
    char recvBuffer[4096];
    struct sockaddr_in clientAddress;
    unsigned int clientLength;

    // Set the size of the address.
    clientLength = sizeof(clientAddress);

    while(network->isOnline()) {        
        SourceInfo source;

        if(!network->_netSocket.recieveFrom(bytesRead, recvBuffer, 4096, source)) {
            std::cout << "Something failed while receiving" << std::endl;
        }

        if(bytesRead > 0) {
            network->readNetworkMessage(recvBuffer, source);
        }
    }

    return 0;
}