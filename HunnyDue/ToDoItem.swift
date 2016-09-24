//
//  ToDoItem.swift
//  HunnyDue
//
//  Created by Diane Hoffstetter on 9/23/16.
//  Copyright © 2016 Dumb Blonde Software. All rights reserved.
//

import Foundation

class ToDoItem {
  
  var assignedTo = ""
  var createdBy = ""
  var createdDate : Date
  var dueDate : Date
  var shortDescription = ""
  var longDescription = ""
  
  init() {
    
    createdDate = Date(timeIntervalSinceNow: 0)
    dueDate = Date(timeIntervalSinceNow: 60*60*24*2)
  }
  
  func isOverdue() -> Bool {
    
    if Date(timeIntervalSinceNow: 0) > dueDate
    {
      return true
    }
    return false
  }
  
}
