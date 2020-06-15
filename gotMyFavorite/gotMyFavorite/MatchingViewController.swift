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
    }
}
