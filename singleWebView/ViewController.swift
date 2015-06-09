//
//  ViewController.swift
//  singleWebView
//
//  Created by Dvid Silva on 6/9/15.
//  Copyright (c) 2015 hackership. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!

    @IBAction func doRefresh(AnyObject) {
        webView.reload()
    }
    
    @IBAction func goBack(AnyObject) {
        webView.goBack()
    }
    
    @IBAction func goForward(AnyObject) {
        webView.goForward()
    }
    
    @IBAction func stop(AnyObject) {
        webView.stopLoading()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: "http://wwwtest.doctorondemand.com")
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

