//
//  cisViewController.swift
//  Showcase JCCC
//
//  Created by Sam on 4/16/15.
//  Copyright (c) 2015 BFG-BetterFamilyGaming. All rights reserved.
//

import Foundation

import UIKit

class cisViewController: UIViewController {
    
    
    @IBOutlet var cisWebView: UIWebView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "http://lentz.co/departments/computer-information-systems/")
        let request = NSURLRequest(URL: url!)
        cisWebView.loadRequest(request)
        // Asigns the http to the webview
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.Portrait.rawValue)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Browser options
    @IBAction func doRefresh(AnyObject) {
        cisWebView.reload()
    }
    
    @IBAction func goBack(AnyObject) {
        cisWebView.goBack()
    }
    
    @IBAction func goForward(AnyObject) {
        cisWebView.goForward()
    }
    
    @IBAction func stop(AnyObject) {
        cisWebView.stopLoading()
    }
    
}

