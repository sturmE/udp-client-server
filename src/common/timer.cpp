#include "timer.h"

Timer::Timer() {
#if defined(__APPLE__)
    mach_timebase_info_data_t info;
    mach_timebase_info(&info);

    _convFactor = (static_cast<double>(info.numer)) / (static_cast<double>(info.denom));
    _convFactor = _convFactor*1.0e-9;

#elif defined(__WIN32__)
    timer_c freq;
    QueryPerformanceFrequency(&freq);
    _convFactor = 1.0/(static_cast<double>freq.QuadPart);
#endif

    reset();
}


Timer::~Timer() {
}


double Timer::getTime() {
    double duration = 0;
#if defined(__APPLE__)
    duration =  static_cast<double>(mach_absolute_time() - _start);
#elif defined(__WIN32__)
    timer_c now;
    QueryPerformanceCounter(&now);
    duration = static_cast<double>(now.QuadPart - _start);
#endif

    return duration * _convFactor;
}

void Timer::reset() {
#if defined(__APPLE__)
    _start = mach_absolute_time();

#elif defined(__WIN32__)
    QueryPerformanceCounter(&_ts);
    _start = _ts.QuadPart;
#endif
}