//  ViewController.h
//  MyFirstWMTSApp

#import <UIKit/UIKit.h>
#import <ArcGIS/ArcGIS.h>


#define wmtsURL @"http://....../WMTS"


@interface ViewController : UIViewController <AGSMapViewLayerDelegate, AGSWMTSInfoDelegate> {
    //container for map layers
	AGSMapView *_mapView;
}


//map view is an outlet so we can associate it with UIView
@property (strong, nonatomic) IBOutlet AGSMapView *mapView;
//add WMTS properties...
@property (strong, nonatomic) AGSWMTSInfo *wmtsInfo;
@property (strong, nonatomic) AGSWMTSLayer *wmtsLayer;


@end