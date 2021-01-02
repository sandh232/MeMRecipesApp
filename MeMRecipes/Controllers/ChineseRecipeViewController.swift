
//
//  ChineseRecipeViewController.swift
//  MeMRecipes
//
//  Created by Xcode User on 2020-04-12.
//  Copyright © 2020 Xcode User. All rights reserved.
//

import UIKit

class ChineseRecipeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var listData: Array<String> = ["Hakka Noddles","Dumplings"]
    
    var siteData: Array<String> = ["https://www.youtube.com/watch?v=27oHn30Az4E","https://www.youtube.com/watch?v=J6xFRlG5Qxg"]
    
    
    var recipeInfo: Array<String> = ["Prep: 15 minutes Cook: 20 minutes Yield: 6 servings","Prep: 25 minutes Cook: 20 minutes Yield: 10 servings"]
    
    var image = ["noodles.jpg", "Dumplings.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 60
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /*
         let tableCell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .default, reuseIdentifier: "cell")
         
         tableCell.textLabel?.text = listData[indexPath.row]
         */
        
        let tableCell:HomeSiteCell = tableView.dequeueReusableCell(withIdentifier: "cell") as? HomeSiteCell ?? HomeSiteCell(style: .default, reuseIdentifier: "cell")
        
        let row = indexPath.row
        
        tableCell.primaryLabel.text = listData[row]
        tableCell.secondaryLabel.text = recipeInfo[row]
        
        let img = UIImage(named:image[row])
        tableCell.myImageView.image = img
        
        return tableCell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let mainDelegate = UIApplication.shared.delegate as! AppDelegate
        mainDelegate.selectedURL = siteData[indexPath.row]
        
        performSegue(withIdentifier: "ChineseRecipe", sender: nil)
        
        
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?{
        
        let fav = UIContextualAction(style: .normal, title: "Favourite"){
            (action, view, success) in
            print("favourite button tapped")
        }
        
        fav.backgroundColor = .orange
        
        return UISwipeActionsConfiguration(actions: [fav])
    }
    
    @IBAction func unwindToChineseTableVC(sender: UIStoryboardSegue){
        
    }

}
