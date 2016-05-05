//
//  Doctor.h
//  Patient Doctor
//
//  Created by Zach Smoroden on 2016-05-05.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Perscription.h"

@interface Doctor : NSObject


@property (nonatomic) NSString *name;
@property (nonatomic) NSString *specialization;


-(instancetype)initWithName:(NSString*)name andSpecialization:(NSString*)specialization;

-(instancetype)createDefaultDoctor;

-(instancetype)acceptPatient:(Patient*)patient;
//-(void)visit:(Patient *)patient;

-(Perscription *)requestMedication:(Patient *)patient;
-(void)listPerscriptionsForPatient:(Patient *)patient;
@end
