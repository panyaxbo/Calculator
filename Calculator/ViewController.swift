//
//  ViewController.swift
//  Calculator
//
//  Created by Panya Boonyakulsrirung on 25/11/2560 BE.
//  Copyright © 2560 iPatz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
    //    print(sender.tag)
        label.text = label.text! + String(sender.tag - 1)
        
    }
    
    @IBAction func buttons(_ sender: UIButton) {
     //   if ()
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

