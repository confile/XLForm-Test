//
//  FormViewController.swift
//  FormTest
//
//  Created by Michael Gorski on 24.04.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

import UIKit

@objc(FormViewController)
class FormViewController: XLFormViewController {
  
  struct tag {
    static let dateTime = "dateTime"
    static let date = "date"
    static let time = "time"
  }
  
  
  
//  @IBOutlet weak var myTableView: UITableView! {
//    didSet {
//      self.tableView = myTableView
//      println("didSet")
//    }
//  }
  
 
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.initializeForm()
    self.tableView.reloadData()
    println("viewDidLoad")
  }
  
  
  override func viewDidAppear(animated: Bool) {
    println("viewDidAppear")
//    self.initializeForm()
//    self.tableView.reloadData()
   
  }
  
  
  func initializeForm() {
    var form : XLFormDescriptor
    var section : XLFormSectionDescriptor
    var row : XLFormRowDescriptor
    
    //form = XLFormDescriptor.formDescriptorWithTitle("Dates") as! XLFormDescriptor
    form = XLFormDescriptor.formDescriptor() as! XLFormDescriptor
    
    section = XLFormSectionDescriptor.formSectionWithTitle("Real examples") as! XLFormSectionDescriptor
    form.addFormSection(section)
    
    
    // First section
    section = XLFormSectionDescriptor.formSection() as! XLFormSectionDescriptor
    form.addFormSection(section)
    
    // Title
    row = XLFormRowDescriptor.formRowDescriptorWithTag("title", rowType: XLFormRowDescriptorTypeText) as! XLFormRowDescriptor
    row.cellConfigAtConfigure.setObject("Title", forKey: "textField.placeholder")
    section.addFormRow(row)
    
    
    section = XLFormSectionDescriptor.formSectionWithTitle("This form is actually an example") as! XLFormSectionDescriptor
    section.footerTitle = "ExamplesFormViewController.h, Select an option to view another example"
    form.addFormSection(section)
    
    
    // TextFieldAndTextView
    row = XLFormRowDescriptor.formRowDescriptorWithTag("kTextFieldAndTextView", rowType: XLFormRowDescriptorTypeButton,  title: "Text Fields") as! XLFormRowDescriptor
    row.action.viewControllerClass = ViewController.self
    section.addFormRow(row)
    form.addFormSection(section)
    
   // section = XLFormSectionDescriptor.formSection() as! XLFormSectionDescriptor
    
    
//    form = XLFormDescriptor.formDescriptorWithTitle("Dates") as! XLFormDescriptor
//    
//    // first section
//    section = XLFormSectionDescriptor.formSection() as! XLFormSectionDescriptor
//    form.addFormSection(section)
//    
//    section = XLFormSectionDescriptor.formSectionWithTitle("Inline Dates") as! XLFormSectionDescriptor
//    form.addFormSection(section)
//    
//    // Date
//    row = XLFormRowDescriptor(tag: tag.date, rowType: XLFormRowDescriptorTypeDateInline, title:"Date")
//    row.value = NSDate()
//    section.addFormRow(row)
//    
//    // Time
//    row = XLFormRowDescriptor(tag: tag.time, rowType: XLFormRowDescriptorTypeTimeInline, title: "Time")
//    row.value = NSDate()
//    section.addFormRow(row)
//    
//    // DateTime
//    row = XLFormRowDescriptor(tag: tag.dateTime, rowType: XLFormRowDescriptorTypeDateTimeInline, title: "Date Time")
//    row.value = NSDate()
//    section.addFormRow(row)
//    
     self.form = form;
//    self.tableView.tableFooterView = UIView(frame: CGRect.zeroRect)
  }
  
  
//  XLFormViewController has a tableView outlet that you can connect with the tableView added to xib file. 
  //You may want to use Grouped Style TableView or set an empty footer view byself.tableView.tableFooterView = UIView(frame: CGRect.zeroRect)`
}
