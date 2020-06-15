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
        "Drama" : ["가정적인","경제적인","무시무시한","내공이 뛰어난","피해를 주는","알고싶은","답답한","흰 가운을 입은","역사적인"],
        "Game": ["레이드 뛰러 가는","분주한","상납하는","손가락으로 공 차는","인디한","총 비슷한 거 쏘는","총 좀 쏘는","총 줏어 쏘는","협곡에 사는"],
        "Sports" : ["공좀차는","스매싱하는","스파이크 치는","스핀넣는","엣지넣는","치고받는","쿠션넣는","퍼팅하는","홈런치는"],
        "Pet" : ["간이 배 밖으로 나온","기어다니는","느릿느릿한","도도한","작은","지저귀는","통실통실한","헤엄치는","헥헥대는"],
        "News" :["넓은","부자가 되고 싶은","사회적인","신기한","생활력강한","싸움잘하는","트랜디한","화려한","활동적인"]
    ]
    var themeTitle : [String:[String]] = [
        "Movie": ["SF","Action","Comedy","Thriller","War","Sports","Fantasy","Music","Melo"],
        "Drama" : ["가족","경제","공포","무협","범죄","미스테리","정치","의학","사극"],
        "Game" : ["던파","스타크래프트","메이플스토리","피파온라인","스팀","오버워치","서든어택","배틀그라운드","LOL"],
        "Sports" : ["축구","족구","배구","볼링","탁구","테니스","당구","골프","야구"],
        "Pet" : ["토끼","거북이","달팽이","고양이","거미","새","햄스터","금붕어","개"],
        "News" : ["세계","경제","사회","IT","생활","정치","이슈","연예","스포츠"]
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
            print(str)
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
