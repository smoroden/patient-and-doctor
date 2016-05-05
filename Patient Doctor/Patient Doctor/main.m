//
//  main.m
//  Patient Doctor
//
//  Created by Zach Smoroden on 2016-05-05.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *d1 = [[Doctor alloc] initWithName:@"Dr. Joe" andSpecialization:@"Foot"];
        Doctor *d2 = [[Doctor alloc] initWithName:@"Dr. Fred" andSpecialization:@"Heart"];
        Patient *p1 = [[Patient alloc] initWithName:@"Dave" andAge:30 withHealthCard:YES withSymptom:SymptomCough];
        
        [d1 acceptPatient:p1];
        [d1 requestMedication:p1];
        
        [d2 listPerscriptionsForPatient:p1];


    }
    return 0;
}
