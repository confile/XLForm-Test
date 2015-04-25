//
//  LoginForm.h
//  FormTest
//
//  Created by Michael Gorski on 24.04.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FXForms.h"

@interface LoginForm  : NSObject <FXForm>

@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *password;
@property (nonatomic, assign) BOOL rememberMe;

@end
