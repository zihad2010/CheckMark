//
//  ViewController.swift
//  CustomDropdown
//
//  Created by Asraful Alam on 8/3/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func checked(_ sender: CustomCheckMark) {
        print(sender.checked)
    }
    
    
}

