//
//  TableViewController.m
//  
//
//  Created by Adriano Falleti on 28/08/15.
//
//

#import "TableViewController.h"
#import "AstronomicalData.h"
#import "SpaceObject.h"
#import "ViewController2.h"
@implementation TableViewController

-(void)viewDidLoad {
    
    self.pianeti = [[NSMutableArray alloc] init];
    // creiamo i pianeti
    for (NSMutableDictionary * planetData in [AstronomicalData allKnownPlanets]) {
        NSString *nomeImmagine = [NSString stringWithFormat:@"%@.jpg",planetData[PLANET_NAME]];
        
        SpaceObject *pianeta = [[SpaceObject alloc] initWithData:planetData and:[UIImage imageNamed:nomeImmagine]];
        
        [self.pianeti addObject:pianeta];
        
        
    }
    
    
    // aggiungiamo i pianeti
    
    NSMutableDictionary *myDictonary = [[NSMutableDictionary alloc] init];
    
    NSString *firstColor = @"red";
    
    [myDictonary setObject:firstColor forKey:@"fireTruck color"];
    [myDictonary setObject:@"blue" forKey:@"Ocean color"];
    [myDictonary setObject:@"yellow" forKey:@"stars color"];
//     NSLog(@"%@",myDictonary);
//
   NSString *blue = [myDictonary objectForKey:@"Ocean color"];
//    NSLog(@"%@",blue);

    NSNumber *myNumber = [NSNumber numberWithInt:5];
    NSLog(@"%@",myNumber);
    NSNumber *floatNumber = [NSNumber numberWithFloat:3.14];
    NSLog(@"%@",floatNumber);
    NSNumber *numero = @43;
    NSLog(@"%@",numero);

}
//questo metodo nonostante non ritorni nulla è molto utile perchè possiamo mettere molta logica in esso
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    //per ora facciamo che quando il bottone che innesca la segue è premuto noi loggiamo il sender cioè ciò che ha scaturito la segue
//    NSLog(@"%@",sender);
    //ora utilizziamo uno strumento molto utile e potente dei linguaggi orientati agli oggetti,cioè l'introspezione.Questa consiste nel vedere di che classe è un oggetto.Infatti come possiamo vedere il sender in questo caso è di tipo id(cioè può essere di tuttu i tipi)
    
    
    if ([sender isKindOfClass:[UITableViewCell class]]) {
        
        // quindi se il sender è ha come tipo di classe la classe di UITableViewCell allora esgui questo codice
        
        
        // ora dobbiamo controllare un altra cosa: cioè se il view controller a cui stiamo andando è del tipo che ci aspettiamo
        
        
        if ([segue.destinationViewController isKindOfClass:[ViewController2 class]]) {
            
            ViewController2 *viewController = segue.destinationViewController; // creaiamo un instanza del vieController in cui ci porta la segue in modo tale da accedere in questo viewController
            
            //ora dobbiamo creare un indexPath perchè ci servirà per capire in quale cella siamo
            //tableView è una proprietò del TableViewController
            NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
            
            //ora creiamo un instanza del pianeta che è stato selezionato.Questo come si può vedere lo ricaviamo dal nostro array di pianeti dove è già tutto impostato
            
            SpaceObject *pianetaSelezionato = self.pianeti[indexPath.row];
            // ci potremmo chiedere perchè non impostiamo direttamente l'immagine dell'imageView del viewController2 uguale all'immagine del pianeta,giusto?Bhe non lo possiamo fare perchè anche se noi cliccheremo non avremo nessuna immagine,dato che non daremo la possibilità al viewController di eseguire il suo metodo fondamentale cioè viewDidLoad.Infatti prima che questo metodo sia chiamato quando noi ci rferiamo alle proprietà di una classe,che sono degli outlet, ci riferiamo al proxy della proprietà e non all'outlet!
//            viewController.imageView.image = pianetaSelezionato.spaceImage;
            //mentre così funziona
            viewController.planet = pianetaSelezionato;
            
            
            
            
        }
        
        
        
    }
    
    
    
    
}





// metodo per il numero di sezioni
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    
    return 1;
    
    
    
}



// metodo per il numero di righe
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // usiamo un if statement per farsi che le sezioni abbiano un numero diverso di righe
    if (section == 0) {
        return [self.pianeti count];
    }
    else if (section == 1) {
        return 2;
    }
    else {
        return 0;
    }
    
    
    
}


// metodo per le celle
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell";
    //creiamo la cella
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    // il metodo dequeueReusableCellWithIdentifier non fa altro che ,quando scendiamo nella tableView non crea una nuova cella bensì utilizza quella precedente e la riconfigura con le caratteristiche che gli diciamo noi.
    
    
    //configuriamo la cella
    
    SpaceObject *pianeta = [self.pianeti objectAtIndex:indexPath.row];
    
    cell.textLabel.text = pianeta.name;
    cell.detailTextLabel.text = pianeta.nickName;
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.detailTextLabel.textColor = [UIColor colorWithWhite:0.5 alpha:1.0];
    cell.imageView.image = pianeta.spaceImage;
    cell.backgroundColor = [UIColor clearColor];
    
    
    
    
    
    
    
 
    
    
    
    
    
    
    
    
    
//    cell.textLabel.text = [self.pianeti objectAtIndex:indexPath.row];
//    
//    if (indexPath.section == 0) {
//        cell.backgroundColor = [UIColor greenColor];
//    }
//    else {
//        
//        cell.backgroundColor = [UIColor blueColor];
//        
//    }
    
    //ritorniamo la cella
    return cell;
    
    
}












@end
