//
//  ViewController.swift
//  TipCalculator
//
//  Created by Nguyên Duy on 9/10/17.
//  Copyright © 2017 Nguyên Duy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    let userName = "duy"
    let password = "123"
    
    var x = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnLoginClick(_ sender: Any) {
        if tfUsername.text == userName && tfPassword.text == password {
            print("Login success!")
            self.navigationController?.pushViewController(TipCalculatorViewController(), animated: true)
        } else {
            print("Login failed!")
        }
    }

}

