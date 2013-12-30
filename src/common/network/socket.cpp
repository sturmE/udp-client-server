#include "socket.h"

Socket::Socket() {
    _handle = -1;    
}

Socket::~Socket() {
    close();
}

bool Socket::setBlocking(bool blocking) {
 #if PLATFORM == PLATFORM_MAC || PLATFORM == PLATFORM_UNIX

    int setting = blocking ? 1 : 0;
    if ( fcntl( _handle, F_SETFL, O_NONBLOCK, setting ) == -1 ) {
        //printf( "failed to set non-blocking socket\n" );
        return false;
    }

#elif PLATFORM == PLATFORM_WINDOWS

    DWORD setting = blocking ? 1 : 0;
    if ( ioctlsocket( _handle, FIONBIO, &setting ) != 0 ) {
       // printf( "failed to set non-blocking socket\n" );
        return false;
    }

#endif

    return true;
}

bool Socket::open( unsigned short port ) {
     _handle = socket( AF_INET, SOCK_DGRAM, IPPROTO_UDP );

    if ( _handle <= 0 ) {
        return false;
    }

    sockaddr_in address;
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons( (unsigned short) port );

    if ( bind( _handle, (const sockaddr*) &address, sizeof(sockaddr_in) ) < 0 ) {
        //printf( "failed to bind socket\n" );
        return false;
    }

    if( !setBlocking(true) ) {
        return false;
    }

    return true;
}

void Socket::close() {
#if PLATFORM == PLATFORM_MAC || PLATFORM == PLATFORM_UNIX
    //close( _handle );
#elif PLATFORM == PLATFORM_WINDOWS
    closesocket( _handle );
#endif
    _handle = -1;
}

bool Socket::isOpen() const {
    return _handle != -1;
}

bool Socket::send( const Address & destination, const void * data, int size ) {
    sockaddr_in address;
    address.sin_family = AF_INET;    
    address.sin_addr.s_addr = htonl( destination.getAddress() );
    address.sin_port = htons( destination.getPort() );

   int sentBytes = sendto(_handle, (const char*)data, size, 0, (sockaddr*)&address, sizeof(sockaddr_in));

    if ( sentBytes != size ) {
        //printf( "failed to send packet: return value = %d\n", sent_bytes );
        return false;
    }
    return true;
}

int Socket::receive(Address& sender, void * data, int size) {
#if PLATFORM == PLATFORM_WINDOWS
    typedef int socklen_t;
#endif

    //unsigned char recvBuffer[MAX_PACKET_SIZE];
    sockaddr_in from;
    socklen_t fromLength = sizeof( from );
    /*while ( true ) {
        int received_bytes = recvfrom( _handle, (char*)recvBuffer, MAX_PACKET_SIZE, 0, (sockaddr*)&from, &fromLength );

        if ( received_bytes <= 0 )
            break;

        unsigned int from_address = ntohl( from.sin_addr.s_addr );
        unsigned int from_port = ntohs( from.sin_port );
        sender = Address(from_address, from_port);        
    }*/

    int receivedBytes = recvfrom( _handle, (char*)data, size, 0, (sockaddr*)&from, &fromLength );
    if ( receivedBytes > 0 ) {
        unsigned int from_address = ntohl( from.sin_addr.s_addr );
        unsigned int from_port = ntohs( from.sin_port );
        sender = Address(from_address, from_port);    
    }
    return receivedBytes;
}