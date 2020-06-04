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
      
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cvc = segue.destination as? MediaViewController{

            cvc.themeString = segue.identifier ?? "????"
        }
    }
    

}
