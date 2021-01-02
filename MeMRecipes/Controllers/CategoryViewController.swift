
//
//  CategoryViewController.swift
//  MeMRecipes
//
//  Created by Xcode User on 2020-04-11.
//  Copyright © 2020 Xcode User. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var listData: Array<String> = ["Indian Cuisine", "Italian cuisine","Chinese cuisine"]
    
    var cuisines: Array<String> = ["Cuisines: Dosa, Biryani", "Cuisines: Pizza, Pasta","Cuisines: Hakka Noodles, Dumplings"]
    var image = ["indian.jpg", "italian.png", "chinese.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return  180
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /*
         let tableCell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .default, reuseIdentifier: "cell")
         
         tableCell.textLabel?.text = listData[indexPath.row]
         */
        
        let tableCell:CategorySiteCell = tableView.dequeueReusableCell(withIdentifier: "cell") as? CategorySiteCell ?? CategorySiteCell(style: .default, reuseIdentifier: "cell")
        
        let row = indexPath.row
        
        tableCell.primaryLabel.text = listData[row]
        tableCell.secondaryLabel.text = cuisines[row]
        
        let img = UIImage(named:image[row])
        tableCell.myImageView.image = img
        
        return tableCell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //        let mainDelegate = UIApplication.shared.delegate as! AppDelegate
        //        mainDelegate.selectedURL = siteData[indexPath.row]
        //
        //        performSegue(withIdentifier: "ChooseSite", sender: nil)
        
        if(indexPath.row == 0){
            
            performSegue(withIdentifier: "Indian", sender: nil)
            
        }
        else if(indexPath.row == 1){
            
            performSegue(withIdentifier: "Italian", sender: nil)
            
        }
        else{
            
            performSegue(withIdentifier: "Chinese", sender: nil)
        }
        
    }
    
    @IBAction func unwindToCategoryTableVC(sender: UIStoryboardSegue){
        
    }
    
}
