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
    var cnt = 0

        
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cvc = segue.destination as? FoodViewController{
            cvc.labelString = labelString
            
        }
        if let cvc = segue.destination as? MediaThemeViewController{
        cvc.labelString = labelString
            
        }
        
        
        
     }
    
    
    @IBAction func DONE(_ sender: UIButton) {
        print(cnt)
        print("label: "+labelString)
    }
    
}
