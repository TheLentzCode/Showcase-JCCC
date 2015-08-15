//
//  templateViewController.swift
//  Showcase JCCC
//
//  Created by Sam on 5/16/15.
//  Copyright (c) 2015 BFG-BetterFamilyGaming. All rights reserved.
//

import Foundation

import UIKit

//When you copy this to your new ViewController change templateViewController on the
//next line to the name of your ViewController
class templateViewController: UIViewController {
    
    
    //Remove // on IBOutlet and change WebView to the name of your new webview
    @IBOutlet var tWebView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Put the web address in between the quotes
        let url = NSURL(string: "http:// your web address here")
        let request = NSURLRequest(URL: url!)
        //Remove // on next line and again put your new webview name where WebView is
        
        //WebView.loadRequest(request)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.Portrait.rawValue)
    }
    
    @IBAction func doRefresh(AnyObject) {
        //Remove // on next line and again put your new webview name where WebView is
        //WebView.reload()
    }
    
    @IBAction func goBack(AnyObject) {
        //Remove // on next line and again put your new webview name where WebView is
        //WebView.goBack()
    }
    
    @IBAction func goForward(AnyObject) {
        //Remove // on next line and again put your new webview name where WebView is
        //WebView.goForward()
    }
    
    @IBAction func stop(AnyObject) {
        //Remove // on next line and again put your new webview name where WebView is
        //WebView.stopLoading()
    }
    
}
