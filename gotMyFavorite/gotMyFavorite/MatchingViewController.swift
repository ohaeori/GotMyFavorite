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
        let next = storyboard.instantiateInitialViewController()
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
        titleLabel.text = labelString
        idLabel.text = receivedID
    }
}
