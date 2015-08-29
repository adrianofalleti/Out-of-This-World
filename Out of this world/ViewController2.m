//
//  ViewController2.m
//  Out of this world
//
//  Created by Adriano Falleti on 29/08/15.
//  Copyright (c) 2015 Adriano Falleti. All rights reserved.
//

#import "ViewController2.h"

@implementation ViewController2

-(void)viewDidLoad {
    [super viewDidLoad];
    //inizializzamo la imageView con una determinatata immagine,successivamente la rendermo dinamica
    
    
    //abbiamo sostituito ciò che c'era scrito per il motivo che puoi trovare nell'implementazione del metodo prepareForSegue nell'implementazione della classe TableViewController.
    
    self.imageView = [[UIImageView alloc] initWithImage:self.planet.spaceImage];
    
    // poi settiamo il contentSize(cioè la taglia del contenuto in cui la scrollView opererà) uguale alla taglia dell'imageView perche infatti noi voglismo usare la scrollView su tutta l'immagine
    
    self.scrollView1.contentSize = self.imageView.frame.size;
    
    //successivamente rendiamo l'imageView come subview della scrollView
    
    [self.scrollView1 addSubview:self.imageView];
    
    // ora dobbiamo impostare questa viewController come delegato della scrollView altrimenti il metodo che abbiamo impostato sotto non verrà mai eseguito
    
    self.scrollView1.delegate = self;
    
    // ora invece abbiamo settato il minimo e il massimo di zooma altrimenti se fossero uguali non potremmo zoomare nulla
    
    self.scrollView1.maximumZoomScale = 2.0;
    self.scrollView1.minimumZoomScale = 0.5;
    
}
-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    //questo metodo ritorna una view che è la view nella quale vogliamo zoomare,cioè l'imageView quindi scriviamo così
    
    return self.imageView;
    
    
    
}




@end
