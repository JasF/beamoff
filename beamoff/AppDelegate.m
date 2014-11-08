//
//  AppDelegate.m
//  beamoff
//
//  Created by ANDREI VAYAVODA on 09.11.14.
//  Copyright (c) 2014 ANDREI VAYAVODA. All rights reserved.
//

#import "AppDelegate.h"
extern void CGSSetDebugOptions(int);
extern void CGSDeferredUpdates(int);

typedef enum {
    disableBeamSync = 0,
    automaticBeamSync = 1,
    forcedBeamSyncMode = 2
} beamSyncMode;


@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    int mode = disableBeamSync;
    
    CGSSetDebugOptions(mode ? 0 : 0x08000000);
    CGSDeferredUpdates(mode);
    [self.window close];
    [NSApp terminate:self];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
