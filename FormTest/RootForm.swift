//
//  RootForm.swift
//  FormTest
//
//  Created by Michael Gorski on 24.04.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

import Foundation



class RootForm : NSObject, FXForm {
  
  var email:String?
  var password:String?
  var rememberMe:Bool!
  
  
  func emailField() -> NSDictionary {
    return ["textLabel.color" : UIColor.redColor()]
  }
  
  
  
}