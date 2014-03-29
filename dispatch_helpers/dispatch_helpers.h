// dispatch_helpers.h

#ifndef DISPATCH_HELPERS_H
#define DISPATCH_HELPERS_H

#include <dispatch/dispatch.h>

#ifdef __cplusplus
extern "C" {
#endif

void dispatch_main_sync(dispatch_block_t block);
void dispatch_main_async(dispatch_block_t block);
void dispatch_main_after(double seconds, dispatch_block_t block);

void dispatch_global_high_sync(dispatch_block_t block);
void dispatch_global_high_async(dispatch_block_t block);
void dispatch_global_high_after(double seconds, dispatch_block_t block);

void dispatch_global_default_sync(dispatch_block_t block);
void dispatch_global_default_async(dispatch_block_t block);
void dispatch_global_default_after(double seconds, dispatch_block_t block);

void dispatch_global_low_sync(dispatch_block_t block);
void dispatch_global_low_async(dispatch_block_t block);
void dispatch_global_low_after(double seconds, dispatch_block_t block);

void dispatch_global_background_sync(dispatch_block_t block);
void dispatch_global_background_async(dispatch_block_t block);
void dispatch_global_background_after(double seconds, dispatch_block_t block);


#ifdef __cplusplus
}
#endif

#endif // DISPATCH_HELPERS_H
