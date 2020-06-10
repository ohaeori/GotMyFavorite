//
//  SocketIOManager.swift
//  gotMyFavorite
//
//  Created by ohaeori on 2020/06/10.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit
import SocketIO

class SocketIOManager: NSObject {
    static let shared = SocketIOManager()
    var manager = SocketManager(socketURL:URL(string:"http://localhost:54321")!,config:[.log(true),.compress])


}
