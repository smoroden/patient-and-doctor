//
//  Doctor.m
//  Patient Doctor
//
//  Created by Zach Smoroden on 2016-05-05.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import "Doctor.h"

static NSMutableDictionary *_perscriptions;
@implementation Doctor
{
    NSMutableSet *_acceptedPatients;
    //NSMutableArray *prescriptions;
    
}

-(instancetype)initWithName:(NSString*)name andSpecialization:(NSString*)specialization {
    self = [super init];
    if (!self)
        return nil;
    
    self.name = name;
    self.specialization = specialization;
    
    _acceptedPatients = [[NSMutableSet alloc] init];
    
    if(!_perscriptions) {
        _perscriptions = [@{} mutableCopy];
    }
    
    
//    if (!_perscriptions[@"test"]) {
//        _perscriptions[@"test"] = @"test";
//    } else {
//        NSLog(@"test exists.");
//    }
    
    return self;
}

-(instancetype)createDefaultDoctor {
    self.name = @"Test";
    self.specialization = @"heart";
    
    return self;
}

-(instancetype)acceptPatient:(Patient *)patient{
    if ([patient hasHealthCard]) {
        NSLog(@"%@ is accepting %@ as a patient.", self.name, patient.name);
        [_acceptedPatients addObject:patient];
        _perscriptions[patient.name] = [@[] mutableCopy];
        return self;
    } else {
        NSLog(@"%@ is rejected %@ as a patient.", self.name, patient.name);
        return nil;
    }
}

-(BOOL)checkPatient:(Patient *)patient {
    if ([_acceptedPatients containsObject:patient]) {
        return YES;
    }
    return NO;
}

-(Perscription *)requestMedication:(Patient *)patient {
    NSLog(@"%@ is requesting some medication.", patient.name);
    if ([self checkPatient:patient]) {
        return [self getPerscriptionForPatient:patient];
    } else {
        NSLog(@"Sorry, you have not been accepted as a patient.");
        return nil;
    }
    return nil;
    
}

-(Perscription*)getPerscriptionForPatient:(Patient*)patient{
    NSLog(@"%@ is getting a perscription for %@.", self.name, patient.name);
    NSMutableArray *p = [@[] mutableCopy];
    Perscription *newScrip;

    p = _perscriptions[patient.name];
    newScrip = [[Perscription alloc] initWithSymptom:patient.symptom];
    [p addObject:newScrip.name];
    _perscriptions[patient.name] = p;
    
    return newScrip;
}

-(void)listPerscriptionsForPatient:(Patient *)patient {
    NSArray *perscriptions = _perscriptions[patient.name];
    NSLog(@"%@ is reporting %@'s perscriptions: ", self.name, patient.name);
    for (NSString *name in perscriptions) {
        NSLog(@"%@", name);
    }
}



@end
