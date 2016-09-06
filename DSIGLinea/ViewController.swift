//
//  ViewController.swift
//  DSIGLinea
//
//  Created by Bharat Subramaniyan on 8/30/16.
//  Copyright © 2016 Bharat Subramaniyan. All rights reserved.
//

import UIKit
import Alamofire

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
        //        self.loginView.layer.cornerRadius = 5.0
        //        self.loginView.layer.borderColor = UIColor.blackColor().CGColor
        //        self.loginView.layer.borderWidth = 1.0
        //self.userNameField.targetForAction(Selector("valueChangedForTextField:"), withSender: self)
        self.userNameField.delegate = self
        self.passwordField.delegate = self
        
        
    }
    
    
    @IBAction func showUserAlert (sender: UIButton)
    {
        
        let username = userNameField.text!
        let password = passwordField.text!
        
        
        
        if password == "hello"
        {
            
            //            let vc = storyboard?.instantiateViewControllerWithIdentifier("HomeTabBar1")
            //            presentViewController(vc!, animated: true, completion: nil)
            self.performSegueWithIdentifier("loginToTabBar", sender: nil)
        }
        
        
        
        let alert = UIAlertController(title: username, message: password, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        //self.presentViewController(alert, animated: true, completion: nil)
        //        let loginDict = NSMutableDictionary()
        //        loginDict.setValue(username, forKey: "username")
        //        loginDict.setValue(password, forKey: "password")
        
        
        //        let parameters: [String: AnyObject] = [
        //            "lat" : "134134134",
        //            "long" : "245245245",
        //            "city" : "San Ramon",
        //            "username" : username,
        //            "password" : password
        //        ]
        //        print(parameters)
        //        Alamofire.request(.POST, "http://d1demo.foodnearu.com/Driver/api_login", parameters: parameters, encoding: .JSON).responseJSON { response in
        //            print(response.request)
        //            print(response.response)
        //            print(response.data)
        //            print(response.result)
        //
        //            if let JSONtemp = response.result.value {
        //                //print("JSON: \(JSONtemp)")
        //            }
        //            response.result.error
        //
        //            let json = JSON(response.result.value!)
        //            let user_session = json["session_id"].string!
        //            print("SESSION ID: \(user_session)")
        //            let baseSessionURLString = "http://d1demo.foodnearu.com/Driver/api_getDriverOrders/"
        //            let currentSessionURL = baseSessionURLString+user_session
        //            Alamofire.request(.GET, currentSessionURL).responseJSON { response in
        //                    print(response.request)
        //                    print(response.response)
        //                    print(response.data)
        //                    print(response.result)
        //
        //                    if let JSONtemp2 = response.result.value {
        //                        print("JSON: \(JSONtemp2)")
        //                    }
        //
        //                    Alamofire.request(.GET, "http://d1demo.foodnearu.com/Driver/api_getDriverOrders/",  parameters: ["": user_session],
        //                        encoding: .URL).responseJSON { response in
        //                            print(response.request)
        //                            print(response.response)
        //                            print(response.data)
        //                            print(response.result)
        //
        //                            if let JSONtemp2 = response.result.value {
        //                                print("JSON: \(JSONtemp2)")
        //                            }
        
        
        
        // }
        
        //print(JSON.session_id)
        
        
        //http://d1demo.foodnearu.com/Driver/api_getDriverOrders/mbb1qilpgjnaki7qg1dh2ie9d5
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

