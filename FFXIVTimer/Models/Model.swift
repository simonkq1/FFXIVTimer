//
//  Model.swift
//  FFXIVTimer
//
//  Created by Jetec-RD on 2020/1/10.
//  Copyright © 2020 JETEC ELETRONICS. All rights reserved.
//

import Foundation


class Model: ObservableObject {

    
    let version: String
    let dungeons: [Dungeon]
    
    init(_ data: [String: Any]) {
        self.version = data["version"] as! String
        let fileString = (try? String(contentsOfFile: FilePath.dungeons, encoding: .utf8)) ?? ""
        self.dungeons = fileString.convertToModel(type: Dungeon.self)
    }
}
