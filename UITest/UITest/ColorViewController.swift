//
//  ViewController.swift
//  UITest
//
//  Created by ohaeori on 2020/06/01.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    var labelString: String = ""
    var count = arc4random_uniform(2)
    var color : [String:[String]] = [
        "Red": ["열정의","혁명의","위험한"]
    ]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // Get the new view controller using segue.destination.
       // Pass the selected object to the new view controller.
        if let cvc = segue.destination as? MediaViewController{
            if let label = segue.identifier{
            
                cvc.labelString = color[label]![3.arc4random]
                
            }
        
       }
    }
}

extension Int {
    var arc4random: Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(self)))
        } else {
            return 0
        }
    }
}
