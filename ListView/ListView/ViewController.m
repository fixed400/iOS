//
//  ViewController.m
//  ListView
//
//  Created by GRD on 8/31/17.
//  Copyright © 2017 GRD. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    NSMutableArray * imageNameArray;
}

@property (weak, nonatomic) IBOutlet UITableView *table;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    //load data before displaying
    [self arraySetUp];
    self.title=@"List of cities";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//============================================
-(void) arraySetUp{
    
   
    
    imageNameArray = [NSMutableArray arrayWithArray: @[@"chunchin",@"cidney",@"hongkong",
                                                       @"london",@"los_angeles",@"mexico",
                                                       @"moscow",@"new_york",@"shanghai",
                                                       @"tokio"]] ;
}


//----------------------------requared (protocol method)-------------------------------
//#pragma mark -UItableView DataSource Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return imageNameArray.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellId = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    cell.imageView.image = [UIImage imageNamed:imageNameArray[indexPath.row]];
    cell.textLabel.text = imageNameArray[indexPath.row];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d",(int)indexPath.row + 1];
    
    cell.contentView.layer.cornerRadius = 8;
    cell.contentView.layer.borderWidth =4;
    cell.contentView.layer.borderColor = [UIColor brownColor].CGColor;
    
    
    return cell;
    
}


-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if(editingStyle==UITableViewCellEditingStyleDelete){
        [imageNameArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath, nil] withRowAnimation:UITableViewRowAnimationFade];
      
    }
}





@end
