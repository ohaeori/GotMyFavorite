//
//  FoodViewController.swift
//  UITest
//
//  Created by ohaeori on 2020/06/02.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController {
    @IBOutlet weak var Label: UILabel!
    
    var receivedID: String = ""
    var labelString: String = ""
    var mediaString: String = "default"
    var subString: String = " "
    var mainTitle: String = "none"
    var subTitle: String = "none"
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
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
        aaa(on: sender)
    }
    
    func aaa(on button: UIButton){
        if (mainTitle == "none" && subTitle == "none") {
            mainTitle = labelString + mediaString + (button.currentTitle ?? "err") + "\n"
        }
        else if(subTitle == "none"){
            subTitle = "(혹은 " + subString + (button.currentTitle ?? "err") + " 일지도...)"
            let nextstoryboard: UIStoryboard? = UIStoryboard(name: "Main", bundle: nil)
            let next = nextstoryboard?.instantiateViewController(withIdentifier: "MatchingViewController") as? MatchingViewController
            next?.receivedID = self.receivedID
            next?.modalPresentationStyle = .fullScreen
            next?.modalTransitionStyle = .coverVertical
            self.present(next!, animated: true)
        }
        
     
    }
    
}
