//
//  ViewController.swift
//  Calculator
//
//  Created by Panya Boonyakulsrirung on 25/11/2560 BE.
//  Copyright © 2560 iPatz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberOnScreen:Double = 0
    var previousNumber:Double = 0
    var performingMath = false
    var operation = 0
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        if performingMath == true{
            label.text = String(sender.tag - 1)
            numberOnScreen = Double(label.text!)!
            performingMath = false
        }
        else {
            label.text = label.text! + String(sender.tag - 1)
            numberOnScreen = Double(label.text!)!
        }
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        // Check display value does not blank and symbol not A/C and =
        if (label.text != "" && sender.tag != 11 && sender.tag != 18) {
            previousNumber = Double(label.text!)!
            // Divide
            if sender.tag == 14 {
                label.text = "/"
            }
            // Multiply
            else if sender.tag == 15 {
                label.text = "x"
            }
            // Minus
            else if sender.tag == 16 {
                label.text = "-"
            }
            // Plus
            else if sender.tag == 17 {
                label.text = "+"
            }
            operation = sender.tag
            performingMath = true
        }
        else if (sender.tag == 18) {
            if operation == 14 {
                label.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 15 {
                label.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 16 {
                label.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 17 {
                label.text = String(previousNumber + numberOnScreen)
            }
        }
        else if sender.tag == 11 {
            label.text = ""
            numberOnScreen = 0
            previousNumber = 0
            operation = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

