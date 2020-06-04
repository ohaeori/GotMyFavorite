//
//  FoodViewController.swift
//  UITest
//
//  Created by ohaeori on 2020/06/02.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController {

 
    var labelString: String = ""


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            print(identifier)
        }
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func btn(_ sender: UIButton) {
        print(labelString)
    }
    
}
