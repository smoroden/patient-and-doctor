//
//  Perscription.h
//  Patient Doctor
//
//  Created by Zach Smoroden on 2016-05-05.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger, Symptom) {
    SymptomFever,
    SymptomCough,
    SymptomItchyEyes
};
@interface Perscription : NSObject

@property (nonatomic) NSString *name;

-(instancetype)initWithSymptom:(Symptom)symptom;

@end
