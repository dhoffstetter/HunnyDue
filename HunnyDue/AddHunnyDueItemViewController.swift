//
//  AddHunnyDueItemViewController.swift
//  HunnyDue
//
//  Created by Diane Hoffstetter on 9/23/16.
//  Copyright © 2016 Dumb Blonde Software. All rights reserved.
//

import UIKit

class AddHunnyDueItemViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

  @IBOutlet weak var shortDescriptionTextField: UITextField!
  @IBOutlet weak var assignToTextField: UITextField!
  @IBOutlet weak var assignToPicker: UIPickerView!
  @IBOutlet weak var dueDatePicker: UIDatePicker!
  
  var users: [User] = []

    override func viewDidLoad() {
      super.viewDidLoad()

      // Do any additional setup after loading the view.
      
      // Configure datePicker
      
      dueDatePicker.minimumDate = Date(timeIntervalSinceNow: 60*10)
      
      // Configure the AssignTo picker
      
      self.assignToPicker.delegate = self
      self.assignToPicker.dataSource = self
      
      // Use dummy values for testing
      
      let user1 = User()
      user1.email = "diane@dbx.com"
      user1.name = "Diane"
      users.append(user1)
      
      let user2 = User()
      user2.email = "dave@dbx.com"
      user2.name = "Dave"
      users.append(user2)
      
      let user3 = User()
      user3.email = "amanda@dbx.com"
      user3.name = "Amanda"
      users.append(user3)

      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  @IBAction func assignItButtonPressed(_ sender: AnyObject) {
  }
  
  // UIPicker
  
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return users.count
  }
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return users[row].name
  }

}
