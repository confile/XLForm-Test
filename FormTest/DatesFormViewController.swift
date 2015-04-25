//
//  DatesFormViewController.swift
//  FormTest
//
//  Created by Michael Gorski on 24.04.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

import Foundation
import UIKit


class DatesFormViewController: XLFormViewController {
  
  struct tag {
    static let dateTime = "dateTime"
    static let date = "date"
    static let time = "time"
  }
  
  init() {
    super.init()
    self.initializeForm()
  }
  
  required init(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder);
    self.initializeForm()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  func initializeForm() {
    var form : XLFormDescriptor
    var section : XLFormSectionDescriptor
    var row : XLFormRowDescriptor
    
    form = XLFormDescriptor.formDescriptorWithTitle("Dates") as! XLFormDescriptor
    
    section = XLFormSectionDescriptor.formSectionWithTitle("Inline Dates") as! XLFormSectionDescriptor
    form.addFormSection(section)
    
    // Date
    row = XLFormRowDescriptor(tag: tag.date, rowType: XLFormRowDescriptorTypeDateInline, title:"Date")
    row.value = NSDate()
    section.addFormRow(row)
    
    // Time
    row = XLFormRowDescriptor(tag: tag.time, rowType: XLFormRowDescriptorTypeTimeInline, title: "Time")
    row.value = NSDate()
    section.addFormRow(row)
    
    // DateTime
    row = XLFormRowDescriptor(tag: tag.dateTime, rowType: XLFormRowDescriptorTypeDateTimeInline, title: "Date Time")
    row.value = NSDate()
    section.addFormRow(row)
    self.form = form;
  }
  
}
