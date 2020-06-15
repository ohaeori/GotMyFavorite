//
//  ViewController.swift
//  QTest
//
//  Created by ohaeori on 2020/06/15.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    var cntO : Int = 5
    var cntNum : Int = 0
    var sizeO : Int = 280
    var sizeX : Int = 280
    
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var l3: UILabel!
    @IBOutlet weak var l4: UILabel!
    @IBOutlet weak var l5: UILabel!
    @IBOutlet weak var l6: UILabel!
    @IBOutlet weak var l7: UILabel!
    @IBOutlet weak var l8: UILabel!
    @IBOutlet weak var l9: UILabel!
    @IBOutlet weak var l10: UILabel!
    
    @IBOutlet weak var btnX: UIButton!
    @IBOutlet weak var btnO: UIButton!
    var labelArr : [UILabel] = []

    @IBOutlet weak var Quiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelArr.append(l1)
        labelArr.append(l2)
        labelArr.append(l3)
        labelArr.append(l4)
        labelArr.append(l5)
        labelArr.append(l6)
        labelArr.append(l7)
        labelArr.append(l8)
        labelArr.append(l9)
        labelArr.append(l10)
        
        goNext()
        // Do any additional setup after loading the view.
    }
    @IBAction func Up(_ sender: Any) {
        if(sizeO > 60) {
            sizeO -= 60
        }
        if(sizeX < 600){
            sizeX += 60
        }
        btnO.titleLabel?.font = UIFont.systemFont(ofSize: CGFloat(sizeO))
        btnX.titleLabel?.font = UIFont.systemFont(ofSize: CGFloat(sizeX))
        if(cntO > 0){
            cntO = (cntO - 1)
        }
        labelControl(cnt: cntO, col: #colorLiteral(red: 1, green: 0.3574486375, blue: 0.3093737364, alpha: 1))
        print(cntO)
        
    }
    @IBAction func Down(_ sender: UIButton) {
        if(sizeX > 60) {
            sizeX -= 60
        }
        if(sizeO < 520){
            sizeO += 60
        }
        btnO.titleLabel?.font = UIFont.systemFont(ofSize: CGFloat(sizeO))
        btnX.titleLabel?.font = UIFont.systemFont(ofSize: CGFloat(sizeX))
        labelControl(cnt: cntO, col: #colorLiteral(red: 0.8232281208, green: 1, blue: 0.5762448311, alpha: 1))
        if(cntO < 10) {
            cntO = (cntO + 1)
        }
        
    }
    
    func labelControl(cnt: Int, col: UIColor){
        labelArr[cnt%10].backgroundColor = col
        if (cnt == 0 && btnO.titleColor(for: .normal)==#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)){
            btnO.setTitleColor(#colorLiteral(red: 0.8232281208, green: 1, blue: 0.5762448311, alpha: 1), for: .normal)
        }
        else {
            btnO.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        }
        if (cnt == 9){
            btnX.setTitleColor(#colorLiteral(red: 1, green: 0.3574486375, blue: 0.3093737364, alpha: 1), for: .normal)
        }
        else {
            btnX.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        }
        goNext()

    }
    
    func goNext(){
        cntNum += 1
        let str = String(cntNum) + "Q"
        Quiz.setTitle(str, for: .normal)
        
        if(cntNum == 10){
            
        }
    }
    
}

