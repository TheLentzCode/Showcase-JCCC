//
//  intViewController.swift
//  Showcase JCCC
//
//  Created by Sam on 4/16/15.
//  Copyright (c) 2015 BFG-BetterFamilyGaming. All rights reserved.
//

import Foundation

import UIKit

class intViewController: UIViewController {
    
    
    
    @IBOutlet var intWebView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
                let url = NSURL(string: "http://lentz.co/departments/interior-design/")
        let request = NSURLRequest(URL: url!)
        intWebView.loadRequest(request)
        // Asigns the http to the webview  
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.Portrait.rawValue)
    }
    
    
    // Browser options
    @IBAction func doRefresh(AnyObject) {
        intWebView.reload()
    }
    
    @IBAction func goBack(AnyObject) {
        intWebView.goBack()
    }
    
    @IBAction func goForward(AnyObject) {
        intWebView.goForward()
    }
    
    @IBAction func stop(AnyObject) {
        intWebView.stopLoading()
    }
    
    
}
