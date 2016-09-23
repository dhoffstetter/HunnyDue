//
//  HunnyDueListViewController.swift
//  HunnyDue
//
//  Created by Diane Hoffstetter on 9/22/16.
//  Copyright © 2016 Dumb Blonde Software. All rights reserved.
//

import UIKit

class HunnyDueListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  @IBOutlet weak var hunnyDueListTableView: UITableView!

  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
      hunnyDueListTableView.dataSource = self
      hunnyDueListTableView.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "HunnyDueCell")
    
    cell.textLabel?.text = "Hello"
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    
  }

}
