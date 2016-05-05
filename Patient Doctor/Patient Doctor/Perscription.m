//
//  Perscription.m
//  Patient Doctor
//
//  Created by Zach Smoroden on 2016-05-05.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import "Perscription.h"

@implementation Perscription

-(instancetype)initWithSymptom:(Symptom)symptom {
    switch (symptom) {
        case SymptomCough:
            self.name = @"Cough Medicine";
            break;
        case SymptomFever:
            self.name = @"Fever Medicine";
            break;
        case SymptomItchyEyes:
            self.name = @"Itch Medicine";
            break;
    }
    NSLog(@"The perscritpion perscribed is: %@", self.name);
    return self;
}

@end
