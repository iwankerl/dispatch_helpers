#include "dispatch_helpers.h"

#pragma mark - main queue

void dispatch_main_sync(dispatch_block_t block)
{
	dispatch_sync(dispatch_get_main_queue(), block);
}

void dispatch_main_async(dispatch_block_t block)
{
	dispatch_async(dispatch_get_main_queue(), block);
}

void dispatch_main_after(double seconds, dispatch_block_t block)
{
	dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, seconds * NSEC_PER_SEC);
	dispatch_after(popTime, dispatch_get_main_queue(), block);
}

#pragma mark - global high priority queue

void dispatch_global_high_sync(dispatch_block_t block)
{
	dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), block);
}

void dispatch_global_high_async(dispatch_block_t block)
{
	dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), block);
}

void dispatch_global_high_after(double seconds, dispatch_block_t block)
{
	dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, seconds * NSEC_PER_SEC);
	dispatch_after(popTime, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), block);
}

#pragma mark - global default priority queue

void dispatch_global_default_sync(dispatch_block_t block)
{
	dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block);
}

void dispatch_global_default_async(dispatch_block_t block)
{
	dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block);
}

void dispatch_global_default_after(double seconds, dispatch_block_t block)
{
	dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, seconds * NSEC_PER_SEC);
	dispatch_after(popTime, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block);
}

#pragma mark - global low priority queue

void dispatch_global_low_sync(dispatch_block_t block)
{
	dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), block);
}

void dispatch_global_low_async(dispatch_block_t block)
{
	dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), block);
}

void dispatch_global_low_after(double seconds, dispatch_block_t block)
{
	dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, seconds * NSEC_PER_SEC);
	dispatch_after(popTime, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), block);
}

#pragma mark - global background priority queue

void dispatch_global_background_sync(dispatch_block_t block)
{
	dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), block);
}

void dispatch_global_background_async(dispatch_block_t block)
{
	dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), block);
}

void dispatch_global_background_after(double seconds, dispatch_block_t block)
{
	dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, seconds * NSEC_PER_SEC);
	dispatch_after(popTime, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), block);
}
