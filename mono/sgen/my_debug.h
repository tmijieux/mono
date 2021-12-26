#ifndef MONO_SGEN_MY_DEBUG_H
#define MONO_SGEN_MY_DEBUG_H

#include "mono/utils/mono-os-mutex.h"
#include "mono/utils/mono-coop-mutex.h"



extern mono_mutex_t my_debug_lock;

extern mono_cond_t my_debug_job_cond; // only access with my_debug_lock
extern volatile int my_debug_can_start_job; // only access with my_debug_lock

extern mono_cond_t my_debug_bridge_cond; // only access with my_debug_lock
extern volatile int my_debug_can_leave_bridge; // only access with my_debug_lock


void my_debug_init(void);



#endif // MONO_SGEN_MY_DEBUG_H
