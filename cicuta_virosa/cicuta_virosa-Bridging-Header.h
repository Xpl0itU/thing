//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//

#import <UIKit/UIKit.h>
#import <mach/mach.h>
#import <sys/mount.h>
#import <sys/stat.h>
#import <sys/snapshot.h>
#import "cicuta_virosa.h"
#import "cicuta_log.h"

#ifndef cicuta_virosa-Bridging-Header_h
#define cicuta_virosa_Bridging-Header_h

//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//
void cicuta_virosa(void);

uint64_t read_64(uint64_t addr);

uint32_t read_32(uint64_t addr);

void write_20(uint64_t addr, const void* buf);

void write_32(uint64_t addr, const void* buf);

void write_64(uint64_t addr, const void* buf);

#endif
