//
//  ViewRecipeWebSiteViewController.swift
//  MeMRecipes
//
//  Created by Xcode User on 2020-04-12.
//  Copyright © 2020 Xcode User. All rights reserved.
//

import UIKit
import WebKit

class ViewRecipeWebSiteViewController: UIViewController,WKNavigationDelegate {


    @IBOutlet var webSite : WKWebView!
    @IBOutlet var activity: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainDelegate = UIApplication.shared.delegate as! AppDelegate
        let urlAddress = URL(string: mainDelegate.selectedURL)
        
        let url = URLRequest(url:urlAddress!)
        
        webSite.load(url)
        
        webSite.navigationDelegate = self as! WKNavigationDelegate
    }
    
    //func webView(_webView:WKWebView, didStartProvisionNavigation navigation: false){
    
    //}
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        
        activity.isHidden = false
        activity.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        activity.isHidden = true
        activity.stopAnimating()
    }


}
