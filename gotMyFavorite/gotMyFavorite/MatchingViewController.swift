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


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
