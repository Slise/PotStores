//
//  StoreTableViewController.m
//  PotStores
//
//  Created by Benson Huynh on 2015-12-01.
//  Copyright © 2015 Benson Huynh. All rights reserved.
//

#import "StoreTableViewController.h"
#import "Store.h"

@interface StoreTableViewController ()

@property (nonatomic) NSArray *stores;

@end

@implementation StoreTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Store *store1 = [[Store alloc] initWithNameOfStore:@"The Medical Cannibis Dispensary"];
    Store *store2 = [[Store alloc] initWithNameOfStore:@"New Amsterdam Cafe"];
    Store *store3 = [[Store alloc] initWithNameOfStore:@"Seymour Wellness Society"];
    Store *store4 = [[Store alloc] initWithNameOfStore:@"Canna Clinics"];
    Store *store5 = [[Store alloc] initWithNameOfStore:@"The Healing Tree"];
    Store *store6 = [[Store alloc] initWithNameOfStore:@"Sea to Sky Medical Cannibis Dispensary"];
    Store *store7 = [[Store alloc] initWithNameOfStore:@"The Green Room Society"];
    Store *store8 = [[Store alloc]initWithNameOfStore:@"5 Star Organics"];
    
    self.stores = @[store1, store2, store3, store4, store5, store6, store7, store8];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return [self.stores count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"storeCell" forIndexPath:indexPath];
    
    Store *store = self.stores[indexPath.row];
    
    cell.textLabel.text = store.nameOfStore;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
