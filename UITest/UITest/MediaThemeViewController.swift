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
        "Movie": ["최첨단","역동적인","유머 있는","소름 돋는","학살 하는","경쟁 하는","환상적인","리듬감 있는","사랑스러운"],
        "Drama" : ["가정적인","경제적인","무시무시한","내공이 뛰어난","피해를 주는","알고싶은","답답한","흰 가운을 입은","역사적인"]
    ]
    var themeTitle : [String:[String]] = [
        "Movie": ["SF","Action","Comedy","Thriller","War","Sports","Fantasy","Music","Melo"],
        "Drama" : ["가족","경제","공포","무협","범죄","미스테리","정치","의학","사극"]
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
            btnArr[i].setTitle(themeTitle[themeString]![i], for: .normal)

        }
        
        // Do any additional setup after loading the view.
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cvc = segue.destination as? MediaViewController{
            if (MediaViewController.cnt == 0) {
                cvc.mediaString = theme[themeString]![Int(segue.identifier ?? "0") ?? 0] + " "
            }
            else {
                cvc.subString = theme[themeString]![Int(segue.identifier ?? "0") ?? 0] + " "
                cvc.mediaString = mediaString + " "
            }
            cvc.labelString = labelString
            MediaViewController.cnt += 1
        }
        
    }
    
   
        
    
}
