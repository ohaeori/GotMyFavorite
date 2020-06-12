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
    @IBOutlet weak var message: UITextField!
    var socket: SocketIOClient!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        SocketIOManager.shared.socketConnect()
    }

    
    @IBAction func sendData(_ sender: Any) {
        SocketIOManager.shared.sendMsg(message: self.message.text!, nickname: "ns")
    }
}
