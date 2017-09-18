//
//  ViewController.swift
//  TipCalculator2
//
//  Created by Nguyên Duy on 9/18/17.
//  Copyright © 2017 Nguyên Duy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbBillAmount: UILabel!
    @IBOutlet weak var tfBillAmount: UITextField!
    @IBOutlet weak var lbTip: UILabel!
    @IBOutlet weak var lbTipAmount: UILabel!
    @IBOutlet weak var lbCurrencySign1: UILabel!
    @IBOutlet weak var btnPercentage15: UIButton!
    @IBOutlet weak var btnPercentage20: UIButton!
    @IBOutlet weak var btnPercentage25: UIButton!
    @IBOutlet weak var btnDollar: UIButton!
    @IBOutlet weak var btnPound: UIButton!
    @IBOutlet weak var btnVND: UIButton!
    @IBOutlet weak var lbTotal: UILabel!
    @IBOutlet weak var lbTotalAmount: UILabel!
    @IBOutlet weak var lbCurrencySign2: UILabel!
    @IBOutlet weak var btnCalculate: UIButton!
    
    var billAmount: Float = 0.0
    var tipAmount: Float = 0.0
    var totalAmount: Float = 0.0
    var currencySign: String = ""
    var btnTag: Int = 0
    var convertedTip: Float = 0.0
    var convertedTotal: Float = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
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
            lbCurrencySign1.text = "$"
            lbCurrencySign2.text = "$"
            break
        case 5:
            btnPound.backgroundColor = .cyan
            btnDollar.backgroundColor = .white
            btnVND.backgroundColor = .white
            lbCurrencySign1.text = "£"
            lbCurrencySign2.text = "£"
            break
        case 6:
            btnVND.backgroundColor = .cyan
            btnPound.backgroundColor = .white
            btnDollar.backgroundColor = .white
            lbCurrencySign1.text = "đ"
            lbCurrencySign2.text = "đ"
        case 7: //btnCalculate
            lbTip.text = "\(tipAmount.rounded())"
            lbTotalAmount.text = "\(totalAmount.rounded())"
            break
        default:
            break
        }
    }
    
    func moneyConvert() {
        let baseTip: Float = tipAmount
        let baseTotal: Float = totalAmount
        
        switch btnTag {
        case 4:
            convertedTip = baseTip
            convertedTotal = baseTotal
            tipAmount = convertedTip
            totalAmount = convertedTotal
//            if btnTag == 5 {
//                convertedTip = baseTip * 0.735536
//                convertedTotal = baseTotal * 0.735536
//                tipAmount = convertedTip
//                totalAmount = convertedTotal
//                break
//            } else if btnTag == 6 {
//                convertedTip = baseTip * 22722.792260185
//                convertedTotal = baseTotal * 22722.792260185
//                tipAmount = convertedTip
//                totalAmount = convertedTotal
//                break
//            }
            break
        case 5:
            convertedTip = baseTip * 0.7361847829
            convertedTotal = baseTotal * 0.7361847829
            tipAmount = convertedTip
            totalAmount = convertedTotal
//            if btnTag == 4 {
//                convertedTip = baseTip * 1.3582
//                convertedTotal = baseTotal * 1.3582
//                tipAmount = convertedTip
//                totalAmount = convertedTotal
//                break
//            } else if btnTag == 6 {
//                convertedTip = baseTip * 30.9042234
//                convertedTotal = baseTotal * 30.9042234
//                tipAmount = convertedTip
//                totalAmount = convertedTotal
//                break
//            }
            break
        case 6:
            convertedTip = baseTip * 22722.792260185
            convertedTotal = baseTotal * 22722.792260185
            tipAmount = convertedTip
            totalAmount = convertedTotal
//            if btnTag == 4 {
//                convertedTip = baseTip * 0.0000440044
//                convertedTotal = baseTotal * 0.0000440044
//                tipAmount = convertedTip
//                totalAmount = convertedTotal
//                break
//            } else if btnTag == 5 {
//                convertedTip = baseTip * 0.0000323793
//                convertedTotal = baseTotal * 0.0000323793
//                tipAmount = convertedTip
//                totalAmount = convertedTotal
//                break
//            }
            break
        default:
            break
        }
    }
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
        calculate()
        setClickedBtnBehavior()
        moneyConvert()
    }
    
    @IBAction func btnPoundClick(_ sender: Any) {
        btnTag = 5
        calculate()
        setClickedBtnBehavior()
        moneyConvert()
    }
    
    @IBAction func btnVNDClick(_ sender: Any) {
        btnTag = 6
        calculate()
        setClickedBtnBehavior()
        moneyConvert()
    }
    
    @IBAction func btnCalculateClick(_ sender: Any) {
        btnTag = 7
        setClickedBtnBehavior()
    }

}

