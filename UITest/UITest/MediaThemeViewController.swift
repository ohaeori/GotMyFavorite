//
//  MediaThemeViewController.swift
//  UITest
//
//  Created by ohaeori on 2020/06/03.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class MediaThemeViewController: UIViewController {

    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    
    var labelString: String = ""
    var mediaString: String = "default"
    var subString: String = " "
    var themeString: String = " "
    var btnArr: [UIButton] = []
    var theme : [String:[String]] = [
        "Movie": ["movieSF","movieAction","movieComedy","movieThriller","movieWar","movieSports","movieFantasy","movieMusic","movieMelo"],
        "Drama" : ["유쾌한 ","의리있는 ","호기심 많은 "],
        "Yellow": ["낙천적인 ","밝은 ","활력 있는 "],
        "Green": ["자연적인 ","성실한 ","도덕적인 "],
        "Blue": ["자유로운 ","침착한 ","차분한 "],
        "Indigo": ["지적인 ","신뢰 가는 ","신비로운 "],
        "Purple": ["개성 넘치는 ","고귀한 ","신성한 "],
        "Back": ["책임감 넘치는 ","야망 있는 ","우아한 "],
        "White": ["헌신적인 ","근심 많은 ","생각 깊은 "]
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        btnArr.append(btn1)
        btnArr.append(btn2)
        btnArr.append(btn3)
        btnArr.append(btn4)
        btnArr.append(btn5)
        btnArr.append(btn6)
        btnArr.append(btn7)
        btnArr.append(btn8)
        btnArr.append(btn9)
        for i: Int in 0..<9 {
            let str = theme[themeString]![i]
            btnArr[i].setBackgroundImage( UIImage(named: str), for:.normal)

        }
        
        // Do any additional setup after loading the view.
    }
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
    
   
        
    
}
