//
//  ViewController.swift
//  DSIGLinea
//
//  Created by Bharat Subramaniyan on 8/30/16.
//  Copyright © 2016 Bharat Subramaniyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DTDeviceDelegate, UITextFieldDelegate {
    
    let scanner : DTDevices = DTDevices()
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var userNameField: UITextField!

    override func viewDidLoad() {
        
        //loading scanner
        self.scanner.delegate = self
        self.scanner.connect()
        
        //code to test scanner
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //testing scanner
        
        
        //LoginView setup
        
        self.view.backgroundColor = UIColor.clearColor()
        self.loginView.layer.cornerRadius = 5.0
        self.loginView.layer.borderColor = UIColor.blackColor().CGColor
        self.loginView.layer.borderWidth = 1.0
        //self.userNameField.targetForAction(Selector("valueChangedForTextField:"), withSender: self)
        self.userNameField.delegate = self
        self.passwordField.delegate = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

