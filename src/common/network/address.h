#pragma once

#include <string>
#include <sstream>

class Address {
private:
    unsigned int _address;
    unsigned short _port;
    std::string _addressString;
public:
    Address();
    Address( unsigned char a, unsigned char b, unsigned char c, unsigned char d, unsigned short port );
    Address( unsigned int address, unsigned short port );
    unsigned int getAddress() const;    
    unsigned char getA() const;
    unsigned char getB() const;
    unsigned char getC() const;
    unsigned char getD() const;
    unsigned short getPort() const;
    bool operator == ( const Address & other ) const;
    bool operator != ( const Address & other ) const;
    std::string toString() const;
};