//
//  AddHunnyDueItemViewController.swift
//  HunnyDue
//
//  Created by Diane Hoffstetter on 9/23/16.
//  Copyright © 2016 Dumb Blonde Software. All rights reserved.
//

import UIKit

class AddHunnyDueItemViewController: UIViewController {

  @IBOutlet weak var shortDescriptionTextField: UITextField!
  @IBOutlet weak var assignToTextField: UITextField!
  @IBOutlet weak var dueDatePicker: UIDatePicker!
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  @IBAction func assignItButtonPressed(_ sender: AnyObject) {
  }


}
