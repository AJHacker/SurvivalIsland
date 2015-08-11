//
//  ViewController.h
//  SURVIVAl ISLAND
//
//  Created by Arihant Jain on 8/9/12.
//  Copyright (c) 2012 DMA. All rights reserved.
//

#import <UIKit/UIKit.h>
#define FileName @"data.plist"
@interface ViewController : UIViewController{
    IBOutlet UISlider *ship1;
    IBOutlet UISlider *ship2;
    IBOutlet UISlider *ship3;
    IBOutlet UISlider *ship4;
    IBOutlet UISlider *ship5;
    IBOutlet UISlider *ship6;
    IBOutlet UISlider *ship7;
    IBOutlet UISlider *ship8;
    int value20;
    int value40;
    int y;
    int x;
    int w;

    int z;

    IBOutlet NSNumber *hiscore;
    IBOutlet  UILabel *finalScore;
    IBOutlet  UILabel *finalhealth;
    IBOutlet  UILabel *hiscorelabel;
    IBOutlet UIButton *powerup1;
     IBOutlet UIButton *powerup2;
     IBOutlet UIButton *powerup3;
     IBOutlet UIButton *powerup4;
    IBOutlet UITextView *howtoplay;
    
    BOOL bannerIsVisible;

    IBOutlet  UIButton *start;
    
    NSTimer *shipmove;
    NSTimer *scoretimer;
    NSTimer *healthtimer;
    NSTimer *powerups;
    NSTimer *disappear;
    
    UIImage *ship;
   
}
-(IBAction)scoretimer:(id)sender;
-(IBAction)score:(id)sender;
-(IBAction)ship1move:(id)sender;
-(IBAction)timer:(id)sender;
-(NSString*)dataFilePath;
-(void)saveFile;
-(IBAction)health:(id)sender;
-(IBAction)powerups:(id)sender;
-(IBAction)checkpowerup:(id)sender;
-(IBAction)dissaper:(id)sender;

@end
