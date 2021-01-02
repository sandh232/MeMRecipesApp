//
//  accountInfo.swift
//  MeMRecipes
//
//  Created by Xcode User on 2020-04-10.
//  Copyright © 2020 Xcode User. All rights reserved.
//

import UIKit

class AccountInfo: NSObject {
    
    var id : Int?
    var name : String?
    var email: String?
    var password: String?
    
    func initWithData(theRow i : Int, theName n : String,theEmail e: String,thePassword pwd: String)
    {
        
        id = i
        name = n
        email = e
        password = pwd
        
        
    }

}
