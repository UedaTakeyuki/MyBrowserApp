//
//  ViewController.swift
//  MyBrowserApp
//
//  Created by 上田健之 on 2019/01/04.
//  Copyright © 2019 Takeyuki UEDA. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var browserWebView: UIWebView!
    @IBOutlet weak var backButton: UIBarButtonItem!
    @IBOutlet weak var forwardButton: UIBarButtonItem!
    @IBOutlet weak var reloadButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "http://dotinstall.com"
        let urlRequest = URLRequest(url: URL(string: urlString)!)
        self.browserWebView.loadRequest(urlRequest)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func goBack(_ sender: Any) {
    }
    
    @IBAction func goForward(_ sender: Any) {
    }
    
    @IBAction func reload(_ sender: Any) {
    }
}

