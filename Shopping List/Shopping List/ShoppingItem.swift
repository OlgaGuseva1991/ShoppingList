//
//  ShoppingItem.swift
//  Shopping List
//
//  Created by student on 14/02/17.
//  Copyright © 2017 student. All rights reserved.
//

import UIKit

class ShoppingItem: NSObject {
    var itemName: NSString = ""
    var completed: Bool = false
    var creationDate: NSDate = NSDate()
    
    init(name:String){
        self.itemName = name
        
    }

}
