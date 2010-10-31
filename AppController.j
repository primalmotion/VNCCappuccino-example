/*
 * AppController.j
 * kanaka
 *
 * Created by You on August 3, 2010.
 * Copyright 2010, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>
@import <VNCCappuccino/VNCCappuccino.j>

@implementation AppController : CPObject
{
    TNVNCView       _vncView;
    CPView          _mainView;
    CPTextField     _fieldHost;
    CPTextField     _fieldPort;
    CPButton        _buttonConnect;
    CPSlider        _sliderZoom;
    CPTextField     _labelInfo;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    var mainWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask];
    var labelHost = [CPTextField labelWithTitle:@"Host : "];
    var labelPort = [CPTextField labelWithTitle:@"Port : "];
    var labelZoom = [CPTextField labelWithTitle:@"Zoom"];
    
    _mainView       = [mainWindow contentView];
    _fieldHost      = [[CPTextField alloc] initWithFrame:CPRectMake(40, 5, 125, 30)];
    _fieldPort      = [[CPTextField alloc] initWithFrame:CPRectMake(204, 5, 125, 30)];
    _buttonConnect  = [[CPButton alloc] initWithFrame:CPRectMake(340, 8, 100, 24)];
    _sliderZoom     = [[CPSlider alloc] initWithFrame:CPRectMake(45, 35, 115, 30)];
    _vncView        = [[TNVNCView alloc] initWithFrame:CPRectMake(5, 70, [_mainView bounds].size.width, [_mainView bounds].size.height - 70)];
    _labelInfo      = [CPTextField labelWithTitle:@""];
    
    [_vncView setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];
    
    [labelHost setFrame:CPRectMake(5, 10, 0, 0)];
    [labelHost sizeToFit];
    
    [labelPort setFrame:CPRectMake(170, 10, 0, 0)];
    [labelPort sizeToFit];
    
    [labelZoom setFrame:CPRectMake(5, 40, 0, 0)];
    [labelZoom sizeToFit];
    
    [_labelInfo setFrame:CPRectMake(170, 40, 0, 0)];
    [_labelInfo sizeToFit];
    
    
    [_fieldHost setPlaceholderString:@"Host"];
    [_fieldHost setBezelStyle:CPTextFieldSquareBezel];
    [_fieldHost setBezeled:YES];
    [_fieldHost setEditable:YES];
    
    [_fieldPort setPlaceholderString:@"Port"];
    [_fieldPort setBezelStyle:CPTextFieldSquareBezel];
    [_fieldPort setBezeled:YES];
    [_fieldPort setEditable:YES];
    
    [_sliderZoom setContinuous:YES];
    [_sliderZoom setMinValue:1];
    [_sliderZoom setMaxValue:200];
    [_sliderZoom setIntValue:100];
    [_sliderZoom setTarget:self];
    [_sliderZoom setAction:@selector(zoom:)];
    [_sliderZoom setEnabled:NO];
    
    [_buttonConnect setTitle:@"Connect"];
    [_buttonConnect setTarget:self];
    [_buttonConnect setAction:@selector(connect:)];
    
    [_mainView addSubview:labelHost];
    [_mainView addSubview:labelPort];
    [_mainView addSubview:labelZoom];
    [_mainView addSubview:_labelInfo];
    [_mainView addSubview:_sliderZoom];
    [_mainView addSubview:_fieldHost];
    [_mainView addSubview:_fieldPort];
    [_mainView addSubview:_buttonConnect];
    [_mainView addSubview:_vncView];
    
    [mainWindow orderFront:self];
}

- (IBAction)connect:(id)sender
{
    [sender setTitle:@"Connecting.."];
    [sender setEnabled:NO];
    
    [_vncView setHost:[_fieldHost stringValue]];
    [_vncView setPort:[_fieldPort stringValue]];
    [_vncView setDelegate:self];
    
    [_vncView load];
    [_vncView connect:nil];    
}

- (IBAction)disconnect:(id)sender
{
    [sender setTitle:@"Connect"];
    [_vncView disconnect:nil];   
    [sender setAction:@selector(connect:)];
}

- (IBAction)zoom:(id)sender
{
    var zoom = [sender intValue];
    
    [_vncView setZoom:(zoom / 100)];
}


- (void)vncView:(TNVNCView)aVNCView updateState:(CPString)aState message:(CPString)aMessage
{
    [_labelInfo setStringValue:@"State " + aState + ": " + aMessage];
    [_labelInfo sizeToFit];
    
    switch(aState)
    {
        case TNVNCCappuccinoStateFailed:
            [_vncView clear];
            [_buttonConnect setEnabled:YES];
            [_buttonConnect setTitle:@"Connect"];
            [_buttonConnect setAction:@selector(connect:)];
            [_sliderZoom setEnabled:NO];
            CPLog.error("Connection is failed: " + aMessage);
            break;
            
        case TNVNCCappuccinoStatePassword:
            alert("Connection needs password and I haven't implement this in this example");
            [_sliderZoom setEnabled:NO];
            break;
        
        case TNVNCCappuccinoStateNormal:
            [_buttonConnect setEnabled:YES];
            [_buttonConnect setTitle:@"Disconnect"];
            [_buttonConnect setAction:@selector(disconnect:)];
            [_sliderZoom setEnabled:YES];
            break;
        
        case TNVNCCappuccinoStateDisconnected:
            [_buttonConnect setEnabled:YES];
            [_buttonConnect setTitle:@"Connect"];
            [_buttonConnect setAction:@selector(connect:)];
            [_sliderZoom setEnabled:NO];
            break;
        }
}
@end
