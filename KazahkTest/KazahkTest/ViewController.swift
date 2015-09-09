//
//  ViewController.swift
//  KazahkTest
//
//  Created by Mark Wells on 9/8/15.
//  Copyright © 2015 msw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var currencyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let df: NSDateFormatter = NSDateFormatter()
        df.locale = NSLocale.currentLocale()
        df.dateStyle = NSDateFormatterStyle.LongStyle
        df.timeStyle = NSDateFormatterStyle.LongStyle
        self.dateLabel.text = df.stringFromDate(NSDate())
        
        let cf: NSNumberFormatter = NSNumberFormatter()
        cf.locale = NSLocale.currentLocale()
        cf.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        self.currencyLabel.text = cf.stringFromNumber(123.45)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

