//
//  Dungeon.swift
//  FFXIVTimer
//
//  Created by Jetec-RD on 2020/1/9.
//  Copyright © 2020 JETEC ELETRONICS. All rights reserved.
//

import Foundation


struct Dungeon: Codable, Identifiable {
    enum Difficulty: String, Codable {
        case simple, normal, extreme, savage, ultimate, unknown
    }
    let id: Int
    let key: String
    let difficulty: Difficulty
    let chapters: [Chapter]
    init(_ data: [String: Any]) {
        self.id = data["id"] as! Int
        self.key = data["key"] as! String
        self.difficulty = Difficulty(rawValue: data["difficulty"] as! String) ?? .unknown
        self.chapters = (data["chapters"] as! [[String: Any]]).map {Chapter($0)}
    }
}

struct Chapter: Codable {
    let id: Int
    let key: String
    let time: Int
    let il: Int
    let rewards: [Rewards]
    let timeline: [String: String]
    init(_ data: [String: Any]) {
        self.id = data["id"] as! Int
        self.key = data["key"] as! String
        self.time = data["time"] as! Int
        self.il = data["il"] as! Int
        self.rewards = (data["rewards"] as! [[String: Any]]).map {Rewards($0)}
        self.timeline = data["timeline"] as! [String: String]
    }
    
}

struct Rewards: Codable {
    enum ItemType: String, Codable {
        case equipment, others
    }
    let part: String
    let type: ItemType
    let il: Int
    init(_ data: [String: Any]) {
        self.part = data["part"] as? String ?? ""
        self.il = data["il"] as? Int ?? 0
        self.type = ItemType(rawValue: data["type"] as? String ?? "others") ?? .others
    }
}
