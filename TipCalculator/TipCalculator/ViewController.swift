//
//  ViewController.swift
//  TipCalculator
//
//  Created by Nguyên Duy on 9/11/17.
//  Copyright © 2017 Nguyên Duy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfBillAmount: UITextField!
    @IBOutlet weak var lbTip: UILabel!
    @IBOutlet weak var lbCurrencySign: UILabel!
    @IBOutlet weak var lbCurrencySign2: UILabel!
    @IBOutlet weak var lbTotal: UILabel!
    @IBOutlet weak var btnCalculate: UIButton!
    @IBOutlet weak var btnDollar: UIButton!
    @IBOutlet weak var btnPound: UIButton!
    @IBOutlet weak var btnVND: UIButton!
    @IBOutlet weak var btnPercentage15: UIButton!
    @IBOutlet weak var btnPercentage20: UIButton!
    @IBOutlet weak var btnPercentage25: UIButton!

    var billAmount: Float = 0.0
    var tipAmount: Float = 0.0
    var totalAmount: Float = 0.0
    var currencySign: String = ""
    var btnTag: Int = 0
    var convertedTip: Float = 0.0
    var convertedTotal: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set keyboard type = number pad
        //tfBillAmount.keyboardType = .numberPad
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func calculate() {
        billAmount = Float(tfBillAmount.text!)!
        
        if btnTag == 1 {
            tipAmount = billAmount * 0.15
            totalAmount = billAmount * 1.15
        } else if btnTag == 2 {
            tipAmount = billAmount * 0.2
            totalAmount = billAmount * 1.2
        } else if btnTag == 3 {
            tipAmount = billAmount * 0.25
            totalAmount = billAmount * 1.25
        }
    }
    
    func setClickedBtnBehavior() {
        switch btnTag {
        case 1:
            btnPercentage15.backgroundColor = .cyan
            btnPercentage20.backgroundColor = .white
            btnPercentage25.backgroundColor = .white
            break
        case 2:
            btnPercentage20.backgroundColor = .cyan
            btnPercentage15.backgroundColor = .white
            btnPercentage25.backgroundColor = .white
            break
        case 3:
            btnPercentage25.backgroundColor = .cyan
            btnPercentage20.backgroundColor = .white
            btnPercentage15.backgroundColor = .white
            break
        case 4:
            btnDollar.backgroundColor = .cyan
            btnPound.backgroundColor = .white
            btnVND.backgroundColor = .white
            lbCurrencySign.text = "$"
            lbCurrencySign2.text = "$"
            break
        case 5:
            btnPound.backgroundColor = .cyan
            btnDollar.backgroundColor = .white
            btnVND.backgroundColor = .white
            lbCurrencySign.text = "£"
            lbCurrencySign2.text = "£"
            break
        case 6:
            btnVND.backgroundColor = .cyan
            btnPound.backgroundColor = .white
            btnDollar.backgroundColor = .white
            lbCurrencySign.text = "đ"
            lbCurrencySign2.text = "đ"
            break
        default:
            break
        }
    }
    
//    func moneyConvert() {
//        let standardTip: Float = tipAmount
//        let standardTotal: Float = totalAmount
//        
//        billAmount = Float(tfBillAmount.text!)!
//        
//        if btnTag == 4 {
//            convertedTip = standardTip * 0.75
//            convertedTotal = standardTotal * 0.75
//        } else if btnTag == 5 {
//            convertedTip = standardTip * 1.32
//            convertedTotal = standardTotal * 1.32
//        } else if btnTag == 6 {
//            convertedTip = standardTip * 22700
//            convertedTotal = standardTotal * 22700
//        }
//    }

    @IBAction func tfBillAmountInput(_ sender: Any) {
    }
    
    @IBAction func btnPercentage15Click(_ sender: Any) {
        btnTag = 1
        calculate()
        setClickedBtnBehavior()
    }
    
    @IBAction func btnPercentage20Click(_ sender: Any) {
        btnTag = 2
        calculate()
        setClickedBtnBehavior()
    }
    
    @IBAction func btnPercentage25Click(_ sender: Any) {
        btnTag = 3
        calculate()
        setClickedBtnBehavior()
    }
    
    @IBAction func btnDollarClick(_ sender: Any) {
        btnTag = 4
        setClickedBtnBehavior()
    }
    
    @IBAction func btnPoundClick(_ sender: Any) {
        btnTag = 5
        setClickedBtnBehavior()
    }
    
    @IBAction func btnVNDClick(_ sender: Any) {
        btnTag = 6
        setClickedBtnBehavior()
    }
    
    @IBAction func btnCalculateClick(_ sender: Any) {
        lbTip.text = "\(tipAmount)"
        lbTotal.text = "\(totalAmount)"
    }
}

