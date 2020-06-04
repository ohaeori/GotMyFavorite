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
    var mediaString: String = "default"
    var subString: String = " "
    static var cnt = 0
    @IBOutlet weak var DONE: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(MediaViewController.cnt < 2) {
            DONE.isEnabled = false
        }


        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cvc = segue.destination as? FoodViewController{
            cvc.labelString = labelString
            cvc.mediaString = mediaString
            cvc.subString = subString
            
        }
        if let cvc = segue.destination as? MediaThemeViewController{
            cvc.labelString = labelString
            cvc.mediaString = mediaString
            cvc.subString = subString
            cvc.themeString = segue.identifier ?? " "
            
        }
        
        
        
     }
    
 
    
    func setUIButtonUnable(on button: UIButton){
        button.isEnabled = false
    }

}
