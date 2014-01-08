#pragma once


# if defined(__APPLE__)
#    include <mach/mach_time.h>
# elif defined(__WIN32__)
#    include <windows.h>
# endif


#if defined(__APPLE__)
  typedef uint64_t timer_t;
  typedef double   timer_c;

#elif defined(__WIN32__)
  typedef LONGLONG      timer_t;
  typedef LARGE_INTEGER timer_c;
#endif



class Timer {
private:    
    timer_t _start;    
    double _convFactor;    
public:
    Timer();
    ~Timer();

    double getTime();
    void reset();
};