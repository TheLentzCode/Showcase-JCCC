//
//  entViewController.swift
//  Showcase JCCC
//
//  Created by Sam on 4/16/15.
//  Copyright (c) 2015 BFG-BetterFamilyGaming. All rights reserved.
//

import Foundation

import UIKit

class entViewController: UIViewController {
    
    
    
    @IBOutlet var entWebView: UIWebView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "http://lentz.co/departments/entrepreneurship/")
        let request = NSURLRequest(URL: url!)
        entWebView.loadRequest(request)
        // Assigns http to the webview
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
        entWebView.reload()
    }
    
    @IBAction func goBack(AnyObject) {
        entWebView.goBack()
    }
    
    @IBAction func goForward(AnyObject) {
        entWebView.goForward()
    }
    
    @IBAction func stop(AnyObject) {
        entWebView.stopLoading()
    }
    
}
