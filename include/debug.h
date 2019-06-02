#pragma once

#include <stdio.h>

#define DEBUG
#ifdef DEBUG
    #define debug(format, ...) printf(format, ##__VA_ARGS__)
#else
    #define debug(format, ...)
#endif // DEBUG