//
//  MediaViewController.swift
//  UITest
//
//  Created by ohaeori on 2020/06/01.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class MediaViewController: UIViewController {
    var labelString: String = ""
    var themeString: String = ""
    var cnt = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cvc = segue.destination as? FoodViewController{
            let str = labelString + " " + themeString
            cvc.labelString = str
        }
        
        
        
     }
    
    
    @IBAction func DONE(_ sender: UIButton) {
        print(cnt)
        print(labelString)
        print(themeString)
    }
    
}
