//
//  TableViewController.h
//  
//
//  Created by Adriano Falleti on 28/08/15.
//
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController

//proprietà della classe
@property (strong,nonatomic) NSMutableArray *pianeti;





// metodi per la configurazione della tableview
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
//APPUNTI SUGLI OGGETTI NSSTRING,NSARRAY,NSDICTIONARY E NSNUMBER
//1. NSString:
//
//NSString *myString = @"string value";
//
//2. NSNumber:
//
//NSNumber *myNumber = @2;
//
//3. NSArray:
//
//NSArray *myArray = @[object1, object2];
//
//4. NSDictionary:
//
//NSDictionary *myDictionary = @{key1 : value1, key2 : value2};
//
//
//
//





@end
