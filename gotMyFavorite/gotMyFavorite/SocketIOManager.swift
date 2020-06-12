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
     var manager = SocketManager(socketURL: URL(string: "http://192.168.35.24:54123")!, config: [.log(true), .compress])
     var socket: SocketIOClient!
     override init() {
         super.init()
         socket = self.manager.socket(forNamespace: "/test")
         
         socket.on("favorite") {
            data, ack in print(data)
         }
     }

     func socketConnect() {
         socket.connect()
     }
     
     func socketDisConnect() {
         socket.disconnect()
     }
    
     func sendMsg(message: String, nickname: String) {
         socket.emit("event",  ["message" : "This is a test message"])
         socket.emit("event1", [["name" : "ns"], ["email" : "@naver.com"]])
         socket.emit("event2", ["name" : "ns", "email" : "@naver.com"])
         socket.emit("msg", ["nick": nickname, "msg" : message])
         
     }
}
