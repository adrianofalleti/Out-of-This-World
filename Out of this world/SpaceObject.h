//
//  SpaceObject.h
//  Out of this world
//
//  Created by Adriano Falleti on 29/08/15.
//  Copyright (c) 2015 Adriano Falleti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@interface SpaceObject : NSObject

@property (strong,nonatomic) NSString *name;
@property (nonatomic) float gravitationalForce;
@property (nonatomic) float diameter;
@property (nonatomic) float yearLength;
@property (nonatomic) float dayLength;
@property (nonatomic) float temperature;
@property (nonatomic) int numberOfMoons;
@property (strong,nonatomic) NSString *nickName;
@property (strong,nonatomic) NSString *interestingFacts;

@property (strong,nonatomic) UIImage * spaceImage;




-(id)initWithData:(NSDictionary *)data and:(UIImage *)immmagine;



@end
