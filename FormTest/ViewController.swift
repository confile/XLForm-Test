//
//  ViewController.swift
//  FormTest
//
//  Created by Michael Gorski on 24.04.15.
//  Copyright (c) 2015 Michael Gorski. All rights reserved.
//

import UIKit

class ViewController: UINavigationController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  
  override func viewDidAppear(animated: Bool) {
    
    let c = FormViewController()
   // self.presentViewController(c, animated: true, completion: nil)
    self.pushViewController(c, animated: true)
    
  }
  

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

