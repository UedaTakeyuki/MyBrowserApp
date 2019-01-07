//
//  ViewController.swift
//  MyBrowserApp
//
//  Created by 上田健之 on 2019/01/04.
//  Copyright © 2019 Takeyuki UEDA. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var browserWebView: UIWebView!
    @IBOutlet weak var backButton: UIBarButtonItem!
    @IBOutlet weak var forwardButton: UIBarButtonItem!
    @IBOutlet weak var reloadButton: UIBarButtonItem!
    
    @IBOutlet weak var browserActivityIndicatorView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.browserWebView.delegate = self
    self.browserActivityIndicatorView.hidesWhenStopped = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        if let urlString = self.browserWebView.request?.url?.absoluteString {
        }
    self.browserActivityIndicatorView.stopAnimating()
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
   self.browserActivityIndicatorView.startAnimating()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let urlString = "http://dotinstall.com"
//        let urlString = ""
        self.loadUrl(urlString: urlString)
        self.addBorder()
    }

    func addBorder(){
        let topBorder = CALayer()
        topBorder.frame = CGRect(x: 0.0, y: 0.0, width: self.browserWebView.frame.size.width, height: 1.0)
        topBorder.backgroundColor = UIColor.lightGray.cgColor
        self.browserWebView.layer.addSublayer(topBorder)
    }

    func showAlert(_ message: String){
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle:  .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil
        )
    alertController.addAction(defaultAction)
        self.present(alertController, animated: true,completion: nil)

    }
    
    func getValidatedUrl(urlString: String) -> URL? {
        if URL(string: urlString) == nil {
   //         print("Invalid URL")
            self.showAlert("Invalid URL")
            return nil
        }
        return URL(string: urlString)
    }
    
    func loadUrl(urlString: String){
        if let url = self.getValidatedUrl(urlString: urlString){
            let urlRequest = URLRequest(url: url)
            self.browserWebView.loadRequest(urlRequest)
        }
    }
    
    @IBAction func goBack(_ sender: Any) {
    }
    
    @IBAction func goForward(_ sender: Any) {
    }
    
    @IBAction func reload(_ sender: Any) {
    }
}

