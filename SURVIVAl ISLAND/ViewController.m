//
//  ViewController.m
//  SURVIVAl ISLAND
//
//  Created by Arihant Jain on 8/9/12.
//  Copyright (c) 2012 DMA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(IBAction)timer:(id)sender{
    [powerup2 setHidden:TRUE];
    [powerup3 setHidden:TRUE];
    [powerup4 setHidden:TRUE];
    [powerup1 setHidden:TRUE];
    [howtoplay setHidden:TRUE];
    [ship1 setValue: 0];
    [ship2 setValue: 10000];
    [ship3 setValue: 0];
    [ship4 setValue: 0];
    value20 = 0;
    value40 = 1000;
    [start setHidden:true];
    [start setEnabled:false];
    shipmove = [NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(ship1move:) userInfo:nil repeats:YES];
    
    
}

-(IBAction)scoretimer:(id)sender{
    NSString *filePath = [self dataFilePath];
    if( [[NSFileManager defaultManager] fileExistsAtPath:filePath]){
        
        NSMutableArray *array = [[NSMutableArray alloc]
                                 initWithContentsOfFile:filePath];
        
        
        hiscore = [[NSNumber alloc] init];
        
        hiscore = [array objectAtIndex:0];
    }
    NSString *labelString = [[NSString alloc]
                             initWithFormat:@"HIGH SCORE: %d", [hiscore intValue]];
    [hiscorelabel setText:labelString];
    
    
    
    
    scoretimer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(score:) userInfo:nil repeats:YES];
    
}
-(IBAction)health:(id)sender{
    
    healthtimer = [NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(healthbar:) userInfo:nil repeats:YES];
    
    
}
-(IBAction)powerups:(id)sender{
    powerups = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(dissaper:) userInfo:nil repeats:YES];
    
    
}
-(IBAction)checkpowerup:(id)sender{
    
    if ([self->powerup1.currentBackgroundImage isEqual:[UIImage imageNamed: @"score2.png"]]) {
        value20 =value20+2;
          
    }
    if ([self->powerup1.currentBackgroundImage isEqual:[UIImage imageNamed: @"health500.png"]]) {
        value40 =value40+500;
        printf("cp2");
    }

    if ([self->powerup1.currentBackgroundImage isEqual:[UIImage imageNamed: @"score5.png"]]) {
        value20 =value20+5;
           }

    if ([self->powerup1.currentBackgroundImage isEqual:[UIImage imageNamed: @"health1000.png"]]) {
        value40 =value40+1000;
       
    }

    if ([self->powerup1.currentBackgroundImage isEqual:[UIImage imageNamed: @"score10.png"]]) {
        value20 =value20+10;
       
    }

    if ([self->powerup2.currentBackgroundImage isEqual:[UIImage imageNamed: @"score2.png"]]) {
        value20 =value20+2;
        
    }

    if ([self->powerup2.currentBackgroundImage isEqual:[UIImage imageNamed: @"health500.png"]]) {
        value40 =value40+500;
        
    }

    if ([self->powerup2.currentBackgroundImage isEqual:[UIImage imageNamed: @"score5.png"]]) {
        value20 =value20+5;
    }

    if ([self->powerup2.currentBackgroundImage isEqual:[UIImage imageNamed: @"health1000.png"]]) {
        value40 =value40+1000;
    }

    if ([self->powerup2.currentBackgroundImage isEqual:[UIImage imageNamed: @"score10.png"]]) {
        value20 =value20+10;
    }

    if ([self->powerup3.currentBackgroundImage isEqual:[UIImage imageNamed: @"score2.png"]]) {
        value20 =value20+2;
    }

    if ([self->powerup3.currentBackgroundImage isEqual:[UIImage imageNamed: @"health500.png"]]) {
        value40 =value40+500;
    }

    if ([self->powerup3.currentBackgroundImage isEqual:[UIImage imageNamed: @"score5.png"]]) {
        value20 =value20+5;
    }

    if ([self->powerup3.currentBackgroundImage isEqual:[UIImage imageNamed: @"health1000.png"]]) {
        value40 =value40+1000;
    }
    if ([self->powerup3.currentBackgroundImage isEqual:[UIImage imageNamed: @"score10.png"]]) {
        value20 =value20+10;
    }

    if ([self->powerup4.currentBackgroundImage isEqual:[UIImage imageNamed: @"score2.png"]]) {
        value20 =value20+2;
    }

    if ([self->powerup4.currentBackgroundImage isEqual:[UIImage imageNamed: @"health500.png"]]) {
        value40 =value40+500;
    }

    if ([self->powerup4.currentBackgroundImage isEqual:[UIImage imageNamed: @"score5.png"]]) {
        value20 =value20+5;
    }

    if ([self->powerup4.currentBackgroundImage isEqual:[UIImage imageNamed: @"health1000.png"]]) {
        value40 =value40+1000;
    }

    if ([self->powerup4.currentBackgroundImage isEqual:[UIImage imageNamed: @"score10.png"]]) {
        value20 =value20+10;
    }

}
-(IBAction)dissaper:(id)sender{
    w=arc4random()%3;
    z=arc4random()%1000;
    x=arc4random()%960;
    if (w==0) {
        if (z<700) {
            [powerup2 setHidden:TRUE];
            [powerup3 setHidden:TRUE];
            [powerup4 setHidden:TRUE];
            [powerup1 setHidden:FALSE];
            
            [powerup1 setBackgroundImage:[UIImage imageNamed:@"score2.png"] forState:UIControlStateNormal];
        }
        if (z>700 && z<800 ) {
            [powerup2 setHidden:TRUE];
            [powerup3 setHidden:TRUE];
            [powerup4 setHidden:TRUE];
            [powerup1 setHidden:FALSE];
            
            [powerup1 setBackgroundImage:[UIImage imageNamed:@"health500.png"] forState:UIControlStateNormal];
        }
        if (z>800 && z<900 ) {
            [powerup2 setHidden:TRUE];
            [powerup3 setHidden:TRUE];
            [powerup4 setHidden:TRUE];
            [powerup1 setHidden:FALSE];
            
            [powerup1 setBackgroundImage:[UIImage imageNamed:@"score5.png"] forState:UIControlStateNormal];
        }
        if (z>900 && z<975 ) {
            [powerup2 setHidden:TRUE];
            [powerup3 setHidden:TRUE];
            [powerup4 setHidden:TRUE];
            [powerup1 setHidden:FALSE];
            
            [powerup1 setBackgroundImage:[UIImage imageNamed:@"health1000.png"] forState:UIControlStateNormal];
        }
        if (z>975 && z<1000 ) {
            [powerup2 setHidden:TRUE];
            [powerup3 setHidden:TRUE];
            [powerup4 setHidden:TRUE];
            [powerup1 setHidden:FALSE];
            
            [powerup1 setBackgroundImage:[UIImage imageNamed:@"score10.png"] forState:UIControlStateNormal];
        }
        if (w==1) {
            if (z<700) {
                [powerup1 setHidden:TRUE];
                [powerup3 setHidden:TRUE];
                [powerup4 setHidden:TRUE];
                [powerup2 setHidden:FALSE];
                
                [powerup2 setBackgroundImage:[UIImage imageNamed:@"score2.png"] forState:UIControlStateNormal];
            }
            if (z>700 && z<800 ) {
                [powerup1 setHidden:TRUE];
                [powerup3 setHidden:TRUE];
                [powerup4 setHidden:TRUE];
                [powerup2 setHidden:FALSE];
                
                [powerup2 setBackgroundImage:[UIImage imageNamed:@"health500.png"] forState:UIControlStateNormal];
            }
            if (z>800 && z<900 ) {
                [powerup1 setHidden:TRUE];
                [powerup3 setHidden:TRUE];
                [powerup4 setHidden:TRUE];
                [powerup2 setHidden:FALSE];
                
                [powerup2 setBackgroundImage:[UIImage imageNamed:@"score5.png"] forState:UIControlStateNormal];
            }
            if (z>900 && z<975 ) {
                [powerup1 setHidden:TRUE];
                [powerup3 setHidden:TRUE];
                [powerup4 setHidden:TRUE];
                [powerup2 setHidden:FALSE];
                
                [powerup2 setBackgroundImage:[UIImage imageNamed:@"health1000.png"] forState:UIControlStateNormal];
            }
            if (z>975 && z<1000 ) {
                [powerup1 setHidden:TRUE];
                [powerup3 setHidden:TRUE];
                [powerup4 setHidden:TRUE];
                [powerup2 setHidden:FALSE];
                
                [powerup2 setBackgroundImage:[UIImage imageNamed:@"score10.png"] forState:UIControlStateNormal];
            }
        }
    
        if (w==2) {
            if (z<700) {
                [powerup2 setHidden:TRUE];
                [powerup1 setHidden:TRUE];
                [powerup4 setHidden:TRUE];
                [powerup3 setHidden:FALSE];
                
                [powerup3 setBackgroundImage:[UIImage imageNamed:@"score2.png"] forState:UIControlStateNormal];
            }
            if (z>700 && z<800 ) {
                [powerup2 setHidden:TRUE];
                [powerup1 setHidden:TRUE];
                [powerup4 setHidden:TRUE];
                [powerup3 setHidden:FALSE];
                
                [powerup3 setBackgroundImage:[UIImage imageNamed:@"health500.png"] forState:UIControlStateNormal];
            }
            if (z>800 && z<900 ) {
                [powerup2 setHidden:TRUE];
                [powerup1 setHidden:TRUE];
                [powerup4 setHidden:TRUE];
                [powerup3 setHidden:FALSE];
                
                [powerup3 setBackgroundImage:[UIImage imageNamed:@"score5.png"] forState:UIControlStateNormal];
            }
            if (z>900 && z<975 ) {
                [powerup2 setHidden:TRUE];
                [powerup1 setHidden:TRUE];
                [powerup4 setHidden:TRUE];
                [powerup3 setHidden:FALSE];
                
                [powerup3 setBackgroundImage:[UIImage imageNamed:@"health1000.png"] forState:UIControlStateNormal];
            }
            if (z>975 && z<1000 ) {
                [powerup2 setHidden:TRUE];
                [powerup1 setHidden:TRUE];
                [powerup4 setHidden:TRUE];
                [powerup3 setHidden:FALSE];
                
                [powerup3 setBackgroundImage:[UIImage imageNamed:@"score10.png"] forState:UIControlStateNormal];
            }
        }
        
        if (w==3) {
            if (z<700) {
                [powerup2 setHidden:TRUE];
                [powerup3 setHidden:TRUE];
                [powerup1 setHidden:TRUE];
                [powerup4 setHidden:FALSE];
                
                [powerup4 setBackgroundImage:[UIImage imageNamed:@"score2.png"] forState:UIControlStateNormal];
            }
            if (z>700 && z<800 ) {
                [powerup2 setHidden:TRUE];
                [powerup3 setHidden:TRUE];
                [powerup1 setHidden:TRUE];
                [powerup4 setHidden:FALSE];
                
                [powerup4 setBackgroundImage:[UIImage imageNamed:@"health500.png"] forState:UIControlStateNormal];
            }
            if (z>800 && z<900 ) {
                [powerup2 setHidden:TRUE];
                [powerup3 setHidden:TRUE];
                [powerup1 setHidden:TRUE];
                [powerup4 setHidden:FALSE];
                
                [powerup4 setBackgroundImage:[UIImage imageNamed:@"score5.png"] forState:UIControlStateNormal];
            }
            if (z>900 && z<975 ) {
                [powerup2 setHidden:TRUE];
                [powerup3 setHidden:TRUE];
                [powerup1 setHidden:TRUE];
                [powerup4 setHidden:FALSE];
                
                [powerup4 setBackgroundImage:[UIImage imageNamed:@"health1000.png"] forState:UIControlStateNormal];
            }
            if (z>975 && z<1000 ) {
                [powerup2 setHidden:TRUE];
                [powerup3 setHidden:TRUE];
                [powerup1 setHidden:TRUE];
                [powerup4 setHidden:FALSE];
                
                [powerup4 setBackgroundImage:[UIImage imageNamed:@"score10.png"] forState:UIControlStateNormal];
            }
            
        }
        
        
    }
    
    
    
}
    -(IBAction)healthbar:(id)sender{
        value40 = value40 +1;
        NSString *labelString = [[NSString alloc]
                                 initWithFormat:@"HEALTH: %d", value40];
        [finalhealth setText:labelString];
        
    }
    
    
    
    
    -(IBAction)ship1move:(id)sender{
        
        if ([ship1 value] == 10000) {
            value40 = value40-3;
        }
        if ([ship2 value] == 0) {
            value40 = value40-3;
        }
        if ([ship3 value] == -10000) {
            value40 = value40-3;
        }
        if ([ship4 value] == 10000) {
            value40 = value40-3;
        }
        if (value40 <= 0) {
            [healthtimer invalidate];
            [scoretimer invalidate];
            [shipmove invalidate];
            [start setHidden:FALSE];
            [start setEnabled:TRUE];
            if (value20>[hiscore intValue]) {
                printf("hiscore: %d value20: %d", [hiscore intValue], value20);
                [self saveFile];
            }
        }
        float value = [ship1 value] +value20;
        [ship1 setValue: value];
        
        float value2 = [ship2 value] -value20;
        [ship2 setValue: value2];
        
        float value3 = [ship3 value] -value20;
        [ship3 setValue: value3];
        
        float value4 = [ship4 value] + value20;
        [ship4 setValue: value4];
        
        float value5 = [ship5 value] +value20;
        [ship5 setValue: value5];
        
        float value6 = [ship6 value] - value20;
        [ship6 setValue: value6];
        
        float value7 = [ship7 value] - value20;
        [ship7 setValue: value7];
        
        
        
        
        
    }
    -(NSString*) dataFilePath{
        NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentsDirectory = [path objectAtIndex:0];
        return [documentsDirectory stringByAppendingPathComponent:FileName];
    }
    -(void) saveFile{
        NSMutableArray *array = [[NSMutableArray alloc] init];
        NSNumber *scorefinal = [[NSNumber alloc] initWithInt: value20];
        [array addObject:scorefinal];
        [array writeToFile:[self dataFilePath] atomically:YES];
        //[array dealloc];
    }
    
    
    
    -(IBAction)score:(id)sender{
        value20 = value20 +1;
        NSString *labelString = [[NSString alloc]
                                 initWithFormat:@"SCORE: %d", value20];
        [finalScore setText:labelString];
        
        
        
    }
    
    
    - (void)viewDidLoad
    
    {
        NSString *filePath = [self dataFilePath];
        if( [[NSFileManager defaultManager] fileExistsAtPath:filePath]){
            
            NSMutableArray *array = [[NSMutableArray alloc]
                                     initWithContentsOfFile:filePath];
            
            
            hiscore = [[NSNumber alloc] init];
            
            hiscore = [array objectAtIndex:0];
        }
        
        
        UIImage *sliderMinimum = [[UIImage imageNamed:@"blank.png"] stretchableImageWithLeftCapWidth:4 topCapHeight:0];
        [ship1 setMinimumTrackImage:sliderMinimum forState:UIControlStateNormal];
        UIImage *sliderMaximum = [[UIImage imageNamed:@"blank.png"] stretchableImageWithLeftCapWidth:4 topCapHeight:0];
        [ship1 setMaximumTrackImage:sliderMaximum forState:UIControlStateNormal];
        ship  = [UIImage imageNamed: @"ship.png"];
        
        [ship1 setThumbImage:ship forState:UIControlStateNormal];
        
        UIImage *sliderMinimum2 = [[UIImage imageNamed:@"blank.png"] stretchableImageWithLeftCapWidth:4 topCapHeight:0];
        [ship2 setMinimumTrackImage:sliderMinimum2 forState:UIControlStateNormal];
        UIImage *sliderMaximum2 = [[UIImage imageNamed:@"blank.png"] stretchableImageWithLeftCapWidth:4 topCapHeight:0];
        [ship2 setMaximumTrackImage:sliderMaximum2 forState:UIControlStateNormal];
        ship  = [UIImage imageNamed: @"ship2.png"];
        
        [ship2 setThumbImage:ship forState:UIControlStateNormal];
        
        UIImage *sliderMinimum3 = [[UIImage imageNamed:@"blank.png"] stretchableImageWithLeftCapWidth:4 topCapHeight:0];
        [ship3 setMinimumTrackImage:sliderMinimum3 forState:UIControlStateNormal];
        UIImage *sliderMaximum3 = [[UIImage imageNamed:@"blank.png"] stretchableImageWithLeftCapWidth:4 topCapHeight:0];
        [ship3 setMaximumTrackImage:sliderMaximum3 forState:UIControlStateNormal];
        ship  = [UIImage imageNamed: @"ship2.png"];
        CGAffineTransform trans = CGAffineTransformMakeRotation(M_PI * 0.5);
        ship3.transform = trans;
        [ship3 setThumbImage:ship forState:UIControlStateNormal];
        
        UIImage *sliderMinimum4 = [[UIImage imageNamed:@"blank.png"] stretchableImageWithLeftCapWidth:4 topCapHeight:0];
        [ship4 setMinimumTrackImage:sliderMinimum4 forState:UIControlStateNormal];
        UIImage *sliderMaximum4 = [[UIImage imageNamed:@"blank.png"] stretchableImageWithLeftCapWidth:4 topCapHeight:0];
        [ship4 setMaximumTrackImage:sliderMaximum4 forState:UIControlStateNormal];
        ship  = [UIImage imageNamed: @"ship.png"];
        CGAffineTransform trans2 = CGAffineTransformMakeRotation(M_PI * 0.5);
        ship4.transform = trans2;
        [ship4 setThumbImage:ship forState:UIControlStateNormal];
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    - (void)viewDidUnload
    {
        [super viewDidUnload];
        // Release any retained subviews of the main view.
    }
    
    - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
    {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    }
    
    @end
