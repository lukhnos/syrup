//
// InputMethodController.m
//
// Copyright (c) 2010-2011 Lukhnos D. Liu (lukhnos at openvanilla dot org)
// 
// Permission is hereby granted, free of charge, to any person
// obtaining a copy of this software and associated documentation
// files (the "Software"), to deal in the Software without
// restriction, including without limitation the rights to use,
// copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following
// conditions:
//
// The above copyright notice and this permission notice shall be
// included in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
// OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
// HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
// WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
// OTHER DEALINGS IN THE SOFTWARE.
//

#import "InputMethodController.h"

#if DEBUG
    #define IMEDebug NSLog
#else
    #define IMEDebug(...)
#endif

@implementation INPUT_METHOD_SERVER_CONTROLLER_CLASS
- (void)dealloc
{
    [super dealloc];
}

- (id)initWithServer:(IMKServer *)inServer delegate:(id)inDelegate client:(id)inClient
{
    IMEDebug(@"%s", __PRETTY_FUNCTION__);
    
    self = [super initWithServer:inServer delegate:inDelegate client:inClient];
    
	if (self) {
	}
	
	return self;
}

- (void)activateServer:(id)inClient
{
    IMEDebug(@"%s", __PRETTY_FUNCTION__);
}

- (void)deactivateServer:(id)inClient
{
    IMEDebug(@"%s", __PRETTY_FUNCTION__);
}

- (void)commitComposition:(id)inClient 
{    
    IMEDebug(@"%s", __PRETTY_FUNCTION__);
}

- (BOOL)handleEvent:(NSEvent*)inEvent client:(id)inClient
{
    IMEDebug(@"%s", __PRETTY_FUNCTION__);
    return NO;
}

- (NSMenu *)menu
{
    IMEDebug(@"%s", __PRETTY_FUNCTION__);
    return nil;
}
@end
