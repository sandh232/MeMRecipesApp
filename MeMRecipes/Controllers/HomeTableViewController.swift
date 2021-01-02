//
//  HomeTableViewController.swift
//  MeMRecipes
//
//  Created by Xcode User on 2020-04-10.
//  Copyright © 2020 Xcode User. All rights reserved.
//

import UIKit

class HomeTableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    var listData: Array<String> = ["Pasta","Pizza","Biryani","Dosa","Hakka Noddles","Dumplings"]
    
    var siteData: Array<String> = ["https://www.youtube.com/watch?v=PQSPWvTBD0U","https://www.youtube.com/watch?v=cxB4ACaaR4I","https://www.youtube.com/watch?v=PmqdA05OXuI","https://www.youtube.com/watch?v=CCab5oh0ZOc","https://www.youtube.com/watch?v=27oHn30Az4E","https://www.youtube.com/watch?v=J6xFRlG5Qxg"]
    
    
    var recipeInfo: Array<String> = ["Prep: 40 minutes Cook: 30 minutes Yield: 6 servings",
    "Prep: 15 minutes Cook: 20 minutes Yield: 8 servings","Prep: 20 minutes Cook: 30 minutes Yield: 8 servings","Prep: 25 minutes Cook: 20 minutes Yield: 4 servings","Prep: 15 minutes Cook: 20 minutes Yield: 6 servings","Prep: 25 minutes Cook: 20 minutes Yield: 10 servings"]
    
    var image = ["pasta.png","pizza.png","biryani.png","dosa.jpg", "noodles.jpg", "Dumplings.png"]
    
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
        
        performSegue(withIdentifier: "ChooseSite", sender: nil)
        
        
        
        
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?{
        
        let fav = UIContextualAction(style: .normal, title: "Favourite"){
            (action, view, success) in
            print("favourite button tapped")
        }
        
        fav.backgroundColor = .orange
        
        return UISwipeActionsConfiguration(actions: [fav])
    }
    

    @IBAction func unwindToHomeTableVC(sender: UIStoryboardSegue){
        
    }
    
    
}
