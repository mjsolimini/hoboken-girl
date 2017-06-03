//
//  MailViewController.swift
//  Hoboken-Girl
//
//  Created by Michael Solimini on 4/9/17.
//  Copyright © 2017 Alpha Dev. All rights reserved.
//

import UIKit
import WebKit

class MailViewController: UIViewController {

    @IBOutlet weak var Container: UIView!
    var WebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        WebView = WKWebView()
        Container.addSubview(WebView)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let frame = CGRect(x: 0, y: 0, width: Container.bounds.width, height: Container.bounds.height)
        WebView.frame = frame
        loadRequest(urlStr: "http://hobokengirl.us7.list-manage1.com/subscribe?u=c9199705c678be59f2a9011e4&id=9b2738cbdd")
    }
    
    func loadRequest(urlStr: String!) {
        let url = URL(string: urlStr)!
        let request = URLRequest(url: url)
        WebView.load(request)
    }
    
    @IBAction func Home(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
