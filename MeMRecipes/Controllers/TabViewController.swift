//
//  TabViewController.swift
//  MeMRecipes
//
//  Created by Xcode User on 2020-04-10.
//  Copyright © 2020 Xcode User. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func unwindToHomeVC(sender: UIStoryboardSegue){
        
    }
    //Hides the status/Nofitication bar from the top of the screen
    override var prefersStatusBarHidden: Bool{
        return true
    }

}
