#include "address.h"

Address::Address() {
    _address = 0;
    _port = 0;
}

Address::Address( unsigned char a, unsigned char b, unsigned char c, unsigned char d, unsigned short port ) {
    _address = ( a << 24 ) | ( b << 16 ) | ( c << 8 ) | d;
    _port = port;
}

Address::Address( unsigned int address, unsigned short port ) {
    _address = address;
    _port = port;
}

unsigned int Address::getAddress() const {
    return _address;
}

unsigned short Address::getPort() const {
    return _port;
}

unsigned char Address::getA() const {
    return ( _address >> 24) & 0xFF;
}

unsigned char Address::getB() const {
    return ( _address >> 16) & 0xFF;
}

unsigned char Address::getC() const {
    return ( _address >> 8) & 0xFF;
}

unsigned char Address::getD() const {
    return ( _address ) & 0xFF;
}

bool Address::operator == ( const Address& other ) const {
    return _address == other.getAddress();
}

bool Address::operator != ( const Address& other ) const {
    return _address != other.getAddress();
}
