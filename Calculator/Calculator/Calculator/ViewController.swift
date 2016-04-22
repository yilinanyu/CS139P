//
//  ViewController.swift
//  Calculator
//
//  Created by Lina on 4/21/16.
//  Copyright © 2016 Lina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    var userIsInyhrMiddleofTyping = false
    @IBAction func touchButton(sender: UIButton) {
        let digit = sender.currentTitle!
      
        if userIsInyhrMiddleofTyping {
            let textCurrentlyDisplay = display.text!
            display.text = textCurrentlyDisplay + digit
            print("touched \(digit) digit")
        }
        else{
             display!.text = digit
        }
        userIsInyhrMiddleofTyping = true
    }
    @IBAction func performOperation(sender: UIButton) {
        userIsInyhrMiddleofTyping = false
        if let mathematicalSymble = sender.currentTitle{
            if mathematicalSymble == "∏"{
                display.text = String(M_PI)
            }
        }
    }
}

