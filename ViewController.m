//  ViewController.m
//  MyFirstWMTSApp

#import "ViewController.h"

@implementation ViewController

@synthesize mapView = _mapView;


- (void)viewDidLoad
{
    [super viewDidLoad]; 
    self.mapView.layerDelegate = self;
    self.wmtsInfo = [[AGSWMTSInfo alloc] initWithURL: [NSURL URLWithString:wmtsURL]];
    self.wmtsInfo.delegate = self;
}

// add wmtslayer 
- (void) wmtsInfoDidLoad:(AGSWMTSInfo *) wmtsInfo{
    NSArray *layerInfos = [wmtsInfo layerInfos];
    AGSWMTSLayerInfo *layerInfo = [layerInfos objectAtIndex:0];
    self.wmtsLayer = [wmtsInfo wmtsLayerWithLayerInfo:layerInfo andSpatialReference:nil];
    [self.mapView addMapLayer:self.wmtsLayer withName:@"wmts Layer"];
}

- (void) wmtsInfo:(AGSWMTSInfo *)wmtsInfo DidFailToLoad:(NSError *)error {
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end