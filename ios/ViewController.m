//
//  ViewController.m
//  ios
//
//  Created by BLT0001-IMAC on 22/10/15.
//  Copyright © 2015 BLT0001-IMAC. All rights reserved.
//

#import "ViewController.h"
#import "Adder.h"
#import "NSString+RemoveNumbers.h"
#import "protocol.h"
#import "singleTon.h"
#import <CoreLocation/CoreLocation.h>
#import <AddressBookUI/AddressBookUI.h>
#import <Contacts/Contacts.h>
#import <MapKit/MapKit.h>
#import <Foundation/Foundation.h>

#define muthu 1
#define muthus(sss)
struct Books
{
    NSString *title;
    NSString *author;
    NSString *subject;
    int   book_id;
};
@interface ViewController ()
{
    UITextField *txt;
    NSArray *arr1;
    NSArray *arr2;
    
    UIButton *btn;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    
    NSSet *set = [NSSet setWithObjects:@"1",@"2",@"3",@"4",@"5",nil];

    NSLog(@"%@",set);
    
    NSOrderedSet *orderedSet = [NSOrderedSet orderedSetWithArray:@[@1,@2,@3,@1,@2]];
   
    NSLog(@"%@",orderedSet);

    Adder *add = [[Adder alloc]init];
    [add getTotal];
    
    singleTon *single;
    
    arr1 = @[@"sdd"];
    
    arr1 = [arr1 arrayByAddingObject:@"123"];
    
    NSLog(@"%@",arr1);
    
//    NSOperationQueue
    
//    txt.text = single.someProperty;
    
    /*
    NSString *dataUrl = @"YOUR_DATA_URL";
    NSURL *url = [NSURL URLWithString:dataUrl];
    
    // 2
    NSURLSessionDataTask *downloadTask = [[NSURLSession sharedSession]
                                          dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                              // 4: Handle response here
                                          }];
    
    // 3
    [downloadTask resume];
*/
    
    
    
    NSString *data = @"";
    
    
    
    NSURL *url  =[NSURL URLWithString:data];
    
    NSURLSessionDataTask *sss=[[NSURLSession sharedSession]dataTaskWithURL:url completionHandler:^(NSData *data,NSURLResponse *response,NSError *error){
    }];
    [self category];
    [self structure];
    [self thread];
    [self didEnterZip:@"628704"];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

//-(void)awakeFromNib
//{
//    [self awakeFromNib];
//}
- (void)didEnterZip:(NSString*)zip
{
    CLGeocoder* geoCoder = [[CLGeocoder alloc] init];
    
    [geoCoder geocodeAddressDictionary:@{(NSString*)CNPostalAddressPostalCodeKey : zip}
                     completionHandler:^(NSArray *placemarks, NSError *error) {
                         if ([placemarks count] > 0) {
                             CLPlacemark* placemark = [placemarks objectAtIndex:0];
                             NSString* city = placemark.addressDictionary[(NSString*)CNPostalAddressCityKey];
                             NSString* state = placemark.addressDictionary[(NSString*)CNPostalAddressStateKey];
                             NSString* country = placemark.addressDictionary[(NSString*)CNPostalAddressCountryKey];
                             NSLog(@"%@",city);
                             NSLog(@"%@",state);

                         } else {
                             // Lookup Failed
                         }
                     }];
    
//    let addressDictionary = [String(CNPostalAddressStreetKey): self.subtitle!]
//    let placemark = MKPlacemark(coordinate: coordinate, addressDictionary: addressDictionary)
//    let mapItem = MKMapItem(placemark: placemark)
//    mapItem.name = title
    

}

//protocol delegates
-(void)datamanager:(NSString *)str
{
    
}
-(void)datamanager1
{
    
}
#pragma mark category
-(void)category
{
    NSString *stringWithNums = @"ABC 123";
    NSLog(@"stringWithNums         --> %@",stringWithNums);
    stringWithNums = [stringWithNums removingNumbersFromString:stringWithNums];
    NSLog(@"trimmed stringWithNums --> %@",stringWithNums);

}

#pragma mark Structure
-(void)structure
{
    struct Books Book1;        /* Declare Book1 of type Book */
    struct Books Book2;        /* Declare Book2 of type Book */
    
    
    Book1.title = @"Objective-C Programming";
    Book1.author = @"Nuha Ali";
    Book1.subject = @"Objective-C Programming Tutorial";
    Book1.book_id = 6495407;
    
    /* book 2 specification */
    Book2.title = @"Telecom Billing";
    Book2.author = @"Zara Ali";
    Book2.subject = @"Telecom Billing Tutorial";
    Book2.book_id = 6495700;

    
    NSLog(@"Book 1 title : %@\n", Book1.title);
    NSLog(@"Book 1 author : %@\n", Book1.author);
    NSLog(@"Book 1 subject : %@\n", Book1.subject);
    NSLog(@"Book 1 book_id : %d\n", Book1.book_id);
    
    /* print Book2 info */
    NSLog(@"Book 2 title : %@\n", Book2.title);
    NSLog(@"Book 2 author : %@\n", Book2.author);
    NSLog(@"Book 2 subject : %@\n", Book2.subject);
    NSLog(@"Book 2 book_id : %d\n", Book2.book_id);
}
#pragma mark Thread
-(void)thread
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
        });
    });
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
