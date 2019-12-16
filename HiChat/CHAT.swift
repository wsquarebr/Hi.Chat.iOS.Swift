//
//  CHAT.swift
//  HiChat
//
//  Created by Luan on 16/12/19.
//  Copyright © 2019 Luan. All rights reserved.
//

import Foundation

struct CHAT: Codable {
    var BOT_URL:String

    if  let path = Bundle.main.path(forResource: "CHAT", ofType: "plist"),
    let xml  = FileManager.default.contents(atPath: path),
    let chat = try? PropertyListDecoder().decode(CHAT.self, from: xml)
    {
        print (chat.BOT_URL)
    }
    
    
}
