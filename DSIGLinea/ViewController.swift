//
//  ViewController.swift
//  DSIGLinea
//
//  Created by Bharat Subramaniyan on 8/30/16.
//  Copyright © 2016 Bharat Subramaniyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DTDeviceDelegate {
    
    let scanner : DTDevices = DTDevices()

    override func viewDidLoad() {
        
        //loading scanner
        self.scanner.delegate = self
        self.scanner.connect()
        
        //code to test scanner
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //testing scanner
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

