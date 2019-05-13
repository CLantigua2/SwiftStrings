//
//  ViewController.swift
//  Palindrome
//
//  Created by Space Ghost lantigua on 5/12/19.
//  Copyright © 2019 Carlos Lantigua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // outlest and variables
    @IBOutlet weak var textFieldTyped: UITextField!
    @IBOutlet weak var label: UILabel!
    
    
    // Actions
    @IBAction func buttonPressed(_ sender: Any) {
        // guard breaks out of function if input is nil
        guard let text = textFieldTyped.text else {
            return
        }
        let reversed = String(text.lowercased().reversed())
        if (reversed == text.lowercased()) {
        label.text = "\(text) is a Palindrome"
        } else {
            label.text = "\(text) is not a Palindrome"
        }
    }
}

