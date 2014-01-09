#pragma once

#include "util.h"

#define MSG_CONNECT 1000
#define MSG_ID 1001
#define MSG_PING 1002
#define MSG_DISCONNECT 1003


struct MSG_GENERIC_DATA {
    int protocolId;
    int16 type;
};

