//
//  ViewController.swift
//  UITest
//
//  Created by ohaeori on 2020/06/01.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var labelString: String = ""

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // Get the new view controller using segue.destination.
       // Pass the selected object to the new view controller.
       if let cvc = segue.destination as? MediaViewController{
        cvc.labelString = segue.identifier ?? "????"
       }
    }
}

