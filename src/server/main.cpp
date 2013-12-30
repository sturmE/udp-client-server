#include "network.h"
#include <unistd.h>
using namespace std;


int main(int argc, char** argv) {
    cout << "Go\n";
    Network network;
    network.setupNetwork();
    while(network.isOnline()) {
        sleep(1000);
    }
    cout << "Done\n";
    return 0;
}