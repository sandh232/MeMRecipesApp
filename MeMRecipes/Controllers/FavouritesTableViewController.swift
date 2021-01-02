//
//  FavouritesTableViewController.swift
//  MeMRecipes
//
//  Created by Xcode User on 2020-04-10.
//  Copyright © 2020 Xcode User. All rights reserved.
//

import UIKit

class FavouritesTableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?{
        
        let fav = UIContextualAction(style: .destructive, title: "Delete"){
            (action, view, success) in
            print("delete button tapped")
        }
        
        fav.backgroundColor = .red
        
        return UISwipeActionsConfiguration(actions: [fav])
    }
    
}
