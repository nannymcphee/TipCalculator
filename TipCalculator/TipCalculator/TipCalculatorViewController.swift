//
//  TipCalculatorViewController.swift
//  TipCalculator
//
//  Created by Nguyên Duy on 9/10/17.
//  Copyright © 2017 Nguyên Duy. All rights reserved.
//

import UIKit

class TipCalculatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnBackClick(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

   
}
