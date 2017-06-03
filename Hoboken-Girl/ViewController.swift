//
//  ViewController.swift
//  Hoboken-Girl
//
//  Created by Michael Solimini on 2/23/17.
//  Copyright © 2017 Alpha Dev. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var EN: UIButton!
    @IBOutlet weak var FB: UIButton!
    @IBOutlet weak var Peo: UIButton!
    @IBOutlet weak var Ad: UIButton!
    @IBOutlet weak var Deals: UIButton!
    @IBOutlet weak var FD: UIButton!
    @IBOutlet weak var Life: UIButton!
    @IBOutlet weak var JC: UIButton!
    @IBOutlet weak var About: UIButton!
    
    override func viewDidLoad() {
        EN.layer.cornerRadius = 3.0
        FB.layer.cornerRadius = 3.0
        Peo.layer.cornerRadius = 3.0
        Ad.layer.cornerRadius = 3.0
        Deals.layer.cornerRadius = 3.0
        FD.layer.cornerRadius = 3.0
        Life.layer.cornerRadius = 3.0
        JC.layer.cornerRadius = 3.0
        About.layer.cornerRadius = 3.0
        
    }

    @IBAction func FB(_ sender: Any) {
        if UIApplication.shared.canOpenURL(NSURL(string: "fb://profile/361076603904381/")! as URL) {
            UIApplication.shared.openURL(NSURL(string: "fb://profile/361076603904381/")! as URL)
        } else {
            UIApplication.shared.openURL(NSURL(string: "https://www.facebook.com/hobokengirlblog")! as URL)
        }
    }
    @IBAction func INSTA(_ sender: Any) {
        if UIApplication.shared.canOpenURL(NSURL(string: "instagram://user?username=hobokengirlblog")! as URL) {
            UIApplication.shared.openURL(NSURL(string: "instagram://user?username=hobokengirlblog")! as URL)
        } else {
            UIApplication.shared.openURL(NSURL(string: "https://www.instagram.com/hobokengirlblog/")! as URL)
        }
    }
    @IBAction func TWT(_ sender: Any) {
        if UIApplication.shared.canOpenURL(NSURL(string: "twitter://user?screen_name=hobokengirlblog")! as URL) {
            UIApplication.shared.openURL(NSURL(string: "twitter://user?screen_name=hobokengirlblog")! as URL)
        } else {
            UIApplication.shared.openURL(NSURL(string: "https://twitter.com/hobokengirlblog")! as URL)
        }
    }
    @IBAction func PIN(_ sender: Any) {
        if UIApplication.shared.canOpenURL(NSURL(string: "pinterest://user/hobokengirlblog")! as URL) {
            UIApplication.shared.openURL(NSURL(string: "pinterest://user/hobokengirlblog")! as URL)
        } else {
            UIApplication.shared.openURL(NSURL(string: "https://www.pinterest.com/hobokengirlblog/")! as URL)
        }
    }
}
