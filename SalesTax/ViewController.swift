//
//  ViewController.swift
//  SalesTax
//
//  Created by Ilya Pokolev on 27.08.2022.
//

import UIKit

class ViewController: UIViewController {

    var priceBeforeTax: Float = 0
    var salesTaxPercent: Float = 0
    
    @IBOutlet weak var priceFinalTf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func beforeTaxPriceChanged(_ sender: UITextField) {
        if let val = Float(sender.text!) {
            priceBeforeTax = val
        } else {
            priceBeforeTax = 0
        }
    }
    @IBAction func salesTaxRateChanged(_ sender: UITextField) {
        if let val = Float(sender.text!) {
            salesTaxPercent = val
        } else {
            salesTaxPercent = 0
        }
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        priceFinalTf.text = String(priceBeforeTax * salesTaxPercent / 100 + priceBeforeTax)
    }
    
}

