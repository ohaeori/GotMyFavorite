//
//  MediaThemeViewController.swift
//  UITest
//
//  Created by ohaeori on 2020/06/03.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class MediaThemeViewController: UIViewController {

    var labelString: String = ""
    var mediaString: String = "default"
    var subString: String = " "
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cvc = segue.destination as? MediaViewController{
            if (MediaViewController.cnt == 0) {
                cvc.mediaString = segue.identifier ?? "??"
            }
            else {
                cvc.subString = segue.identifier ?? "??"
                cvc.mediaString = mediaString
            }
            cvc.labelString = labelString
            MediaViewController.cnt += 1
        }
        
    }
    
    
    @IBAction func btn2(_ sender: UIButton) {
        
    }
    
        
    
}
