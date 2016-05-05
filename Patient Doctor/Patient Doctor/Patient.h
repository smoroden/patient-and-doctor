//
//  Patient.h
//  Patient Doctor
//
//  Created by Zach Smoroden on 2016-05-05.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;
#import "Perscription.h"





@interface Patient : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSInteger age;
@property BOOL healthCard;
@property (nonatomic) Symptom symptom;

@property (nonatomic) Doctor *doctor;


-(instancetype)initWithName:(NSString *)name andAge:(NSInteger)age withHealthCard:(BOOL)healthCard withSymptom:(Symptom)symptom;

-(BOOL)hasHealthCard;


@end
