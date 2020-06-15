//
//  ViewController.swift
//  UITest
//
//  Created by ohaeori on 2020/06/01.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    var receivedID: String = ""
    var labelString: String = ""
    var count = arc4random_uniform(2)
    var color : [String:[String]] = [
        "Red": ["열정의 ","혁명의 ","위험한 "],
        "Orange" : ["유쾌한 ","의리있는 ","호기심 많은 "],
        "Yellow": ["낙천적인 ","밝은 ","활력 있는 "],
        "Green": ["자연적인 ","성실한 ","도덕적인 "],
        "Blue": ["자유로운 ","침착한 ","차분한 "],
        "Indigo": ["지적인 ","신뢰 가는 ","신비로운 "],
        "Purple": ["개성 넘치는 ","고귀한 ","신성한 "],
        "Black": ["책임감 넘치는 ","야망 있는 ","우아한 "],
        "White": ["헌신적인 ","근심 많은 ","생각 깊은 "]
    ]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // Get the new view controller using segue.destination.
       // Pass the selected object to the new view controller.
        if let cvc = segue.destination as? MediaViewController{
            if let label = segue.identifier{
                cvc.labelString = color[label]![3.arc4random]
                cvc.receivedID = self.receivedID
            }
        
       }
    }
    override func viewDidLoad() {
        super.viewDidLoad()    }
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
