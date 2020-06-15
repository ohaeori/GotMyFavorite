//
//  MatchingViewController.swift
//  gotMyFavorite
//
//  Created by ohaeori on 2020/06/10.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit
import SocketIO

class MatchingViewController: UIViewController {
    
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var MatchingBtn: UIButton!
    
    var receivedID: String = ""
    var labelString: String = "none"
    var socket: SocketIOClient!
    
    @IBAction func ModifyFavorite(_ sender: Any) {
        //change StoryBoard
        let storyboard: UIStoryboard = UIStoryboard(name: "getFavorite", bundle: nil)
        let next = storyboard.instantiateViewController(withIdentifier: "CVC") as? ColorViewController

        next?.receivedID = self.receivedID
        next?.modalPresentationStyle = .fullScreen
        next?.modalTransitionStyle = .coverVertical
        self.present(next!, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SocketIOManager.shared.socketConnect()
//        if (labelString == "none"){
//            MatchingBtn.isEnabled = false
//        }
        
        print("dddddd")
        print(labelString)
        titleLabel.text = labelString
        idLabel.text = receivedID
        if (labelString == "none"){
            MatchingBtn.isEnabled = false
        }
    }
    @IBAction func matchStart(_ sender: UIButton) {
        
        SocketIOManager.shared.socketConnect()
        SocketIOManager.shared.sendMsg(message: <#T##String#>, nickname: receivedID)
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Quiz", bundle: nil)
        let next = storyboard.instantiateViewController(withIdentifier: "Quiz") as? QuestionViewController

        
        next?.modalPresentationStyle = .fullScreen
        next?.modalTransitionStyle = .coverVertical
        self.present(next!, animated: true, completion: nil)
    }
}
