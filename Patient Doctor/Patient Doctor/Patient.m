//
//  Patient.m
//  Patient Doctor
//
//  Created by Zach Smoroden on 2016-05-05.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient


-(instancetype)initWithName:(NSString *)name andAge:(NSInteger)age withHealthCard:(BOOL)healthCard withSymptom:(Symptom)symptom {
    self = [super init];
    if(!self)
        return nil;
    
    self.name = name;
    self.age = age;
    self.healthCard = healthCard;
    self.symptom = symptom;
    return self;
}

-(BOOL)hasHealthCard {
    return self.healthCard;
}



@end
