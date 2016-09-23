//
//  SignInViewController.swift
//  HunnyDue
//
//  Created by Diane Hoffstetter on 9/22/16.
//  Copyright © 2016 Dumb Blonde Software. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
  
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  
  
  // Temporary email and password for signing ing
  var email : String? = "diane@dbs.com"
  var password : String? = "password"
  

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    if email != nil {
      
      emailTextField.text = email
    }
    
    if password != nil {
      
      passwordTextField.text = password
    }
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func whatToDoButtonPressed(_ sender: AnyObject) {
    
    self.performSegue(withIdentifier: "SignInToListSegue", sender: nil)

  }

}

