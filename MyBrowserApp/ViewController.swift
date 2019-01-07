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
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let urlString = "http://dotinstall.com"
//        let urlString = ""
        self.loadUrl(urlString: urlString)
//        self.addBorder()
    }

/*    func addBorder(){
        
    }
 */
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

