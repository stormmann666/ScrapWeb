//
//  ViewController.swift
//  ScrapWeb
//
//  Created by Antonio on 22/10/2019.
//  Copyright © 2019 Antonio. All rights reserved.
//

import UIKit
import WebKit
import  SwiftSoup

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTF : UITextField!
    @IBOutlet weak var passwordTF : UITextField!
    @IBOutlet weak var webView : WKWebView!
    @IBOutlet weak var urlTF : UITextField!
    
    
    
    //let webView =  WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        
        
        
        let url = URL(string: "https://www.google.com")
        
        let request = URLRequest(url: url!)
        
        self.webView.load(request)
        
        let f = 90
    }
    
    @IBAction func onSignIn() {
        
        
        
        
    }
    
    
    @IBAction func onSeeString() {
        
        
        
    }


}

