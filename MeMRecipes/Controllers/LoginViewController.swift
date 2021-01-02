//
//  LoginViewController.swift
//  MeMRecipes
//
//  Created by Xcode User on 2020-04-10.
//  Copyright © 2020 Xcode User. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {

   
    @IBOutlet var tEmail:UITextField!
    @IBOutlet var tPassword:UITextField!

    
     override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func Login(sender: Any){
        
        if(tEmail.text == "Paul@Gmail.com" || tEmail.text == "paul@gmail.com" && tPassword.text == "ABC123"){
            
            self.performSegue(withIdentifier: "Homepage", sender: self)
            tEmail.text = ""
            tPassword.text = ""
            
        }
        else
        {
            let alertBox = UIAlertController(title: "Invalid Login Info!", message: "Please register to login", preferredStyle: .alert)
            
            let cancelAction = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
          
            
            let registerAction = UIAlertAction(title: "Register", style: .default){
                (alert) in
                
                 self.dismiss(animated: true, completion: nil)
                
            }
            
            alertBox.addAction(registerAction)
            alertBox.addAction(cancelAction)
            present(alertBox,animated: true)
            
        }
        
    }
   
    //Hides the status/Nofitication bar from the top of the screen
    override var prefersStatusBarHidden: Bool{
        return true
    }
 


}

