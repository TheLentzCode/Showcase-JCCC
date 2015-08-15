//
//  stuViewController.swift
//  Showcase JCCC
//
//  Created by Sam on 4/16/15.
//  Copyright (c) 2015 BFG-BetterFamilyGaming. All rights reserved.
//

import Foundation

import UIKit

class stuViewController: UIViewController {
    
    
    
    @IBOutlet var studentWebView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "http://lentz.co/students/")
        let request = NSURLRequest(URL: url!)
        studentWebView.loadRequest(request)
        // Assigns the http to the webview
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.Portrait.rawValue)
    }
    
    
    //Browser options
    @IBAction func doRefresh(AnyObject) {
        studentWebView.reload()
    }
    
    @IBAction func goBack(AnyObject) {
        studentWebView.goBack()
    }
    
    @IBAction func goForward(AnyObject) {
        studentWebView.goForward()
    }
    
    @IBAction func stop(AnyObject) {
        studentWebView.stopLoading()
    }
    
}
