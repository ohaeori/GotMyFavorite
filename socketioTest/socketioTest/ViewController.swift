//
//  ViewController.swift
//  socketioTest
//
//  Created by qkrwoghk on 2020/06/10.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit
import SocketIO

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var socket: SocketIOClient!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func disconnetSocket(_ sender: Any) {
        SocketIOManager.shared.closeConnection()
    }
    @IBAction func connectSocket(_ sender: Any) {
        SocketIOManager.shared.establishConnection()
    }
    
    @IBAction func sendData(_ sender: Any) {
        SocketIOManager.shared.sendMessage(message: self.textField.text!, nickname: "ns")
    }

}
