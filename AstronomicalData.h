//
//  AstronomicalData.h
//  Out Of This World
//
//  Created by Teddy Wyly on 9/16/13.
//  Copyright (c) 2013 Teddy Wyly. All rights reserved.
//

#import <Foundation/Foundation.h>
// tutte queste variabili con define non sono altro che costanti(non possono essere cambiate),per esempio PLANET_NAME è il nome di una stringa cioè @"Planet Name".Queste costanti sono usate come possiamo vedere ,nell'implementazione
#define PLANET_NAME @"Planet Name"
#define PLANET_GRAVITY @"Acelleration of Gravity at Surface"
#define PLANET_DIAMETER @"Planet Size"
#define PLANET_YEAR_LENGTH @"Planet Year Length"
#define PLANET_DAY_LENGTH @"Length of Day in Hours"
#define PLANET_TEMPERATURE @"Planet Temperature"
#define PLANET_NUMBER_OF_MOONS @"Number of Moons"
#define PLANET_NICKNAME @"Planet Nickname"
#define PLANET_INTERESTING_FACT @"Fact about the Planet"
#define PLANET_IMAGE @"Image of the Planet"

@interface AstronomicalData : NSObject
// questo è un class method.Questo non è altro che un inizializzatore e serve proprioa creare,come gli inizializzatori,un instanza di una classe.Un esempio è il metodo che hanno le stringhe ,cioè stringWithFormat
+ (NSArray *)allKnownPlanets; // Returns an array of NSDictionaries
//+ (NSArray *)otherAstronomicalBodies; // Returns an array of NSDictionaries


@end
