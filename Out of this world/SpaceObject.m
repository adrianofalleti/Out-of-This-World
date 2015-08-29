//
//  SpaceObject.m
//  Out of this world
//
//  Created by Adriano Falleti on 29/08/15.
//  Copyright (c) 2015 Adriano Falleti. All rights reserved.
//

#import "SpaceObject.h"
#import "AstronomicalData.h"

@implementation SpaceObject


// con questo metodo passiamo il designated initializer da quello precedente che era -(id)init al nuovo inizializzatore che abbiamo implementato.
-(id)init {
    self = [self initWithData:nil and:nil];
    return self;
}

-(id)initWithData:(NSDictionary *)data and:(UIImage *)immmagine {
    self = [super init];// questa linea di codice crea un oggetto di base a cui poi noi cambiamo varie cose
    
    self.name = data[PLANET_NAME];
    self.gravitationalForce = [data[PLANET_GRAVITY] floatValue];
    self.diameter = [data[PLANET_DIAMETER] floatValue];
    self.yearLength =[data[PLANET_YEAR_LENGTH] floatValue];
    self.dayLength = [data[PLANET_DAY_LENGTH] floatValue];
    self.temperature = [data[PLANET_TEMPERATURE] floatValue];
    self.numberOfMoons = [data[PLANET_NUMBER_OF_MOONS] intValue];
    self.nickName = data[PLANET_NICKNAME];
    self.interestingFacts = data[PLANET_INTERESTING_FACT];
    
    self.spaceImage = immmagine;
    return self;
}





@end
