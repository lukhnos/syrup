//
//  IMKControllerTest.m
//  IMKControllerTest
//
//  Created by Felix Ren-Chyan Chern on 11/11/15.
//  All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "InputMethodController.h"

@interface IMKControllerTest : SenTestCase {
    IMKServer* server;
    INPUT_METHOD_SERVER_CONTROLLER_CLASS* controller;
}

@end

@implementation IMKControllerTest

- (void)setUp
{
    [super setUp];
    server=[IMKServer alloc];
    controller=[[INPUT_METHOD_SERVER_CONTROLLER_CLASS alloc] initWithServer:server 
                                                                    delegate:self 
                                                                     client:NULL];
    STAssertNotNil(controller,@"controller is nil");
}

- (void)tearDown
{
    [server release];
    [controller release];
    
    [super tearDown];
}

- (void)test_handleEvent
{
    // To Generate a virtual keyboard event, use CGEvent from Quartz API.
    // Cascade the event to add masks
    // Then use [NSEvent eventWithCGEvent:(CGEventRef)] to forward the event 
    // to coresponding handler
    CGEventRef event = CGEventCreateKeyboardEvent(NULL, (CGKeyCode)9, true);
    CGEventSetFlags(event, kCGEventFlagMaskCommand);
    BOOL eventResult = [controller handleEvent:[NSEvent eventWithCGEvent:event]
                                         client:NULL];
    STAssertTrue(eventResult,@"test event handling command-v");
    CFRelease(event);
}

@end
