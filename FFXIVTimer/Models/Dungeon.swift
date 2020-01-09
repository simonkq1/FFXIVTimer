//
//  Dungeon.swift
//  FFXIVTimer
//
//  Created by Jetec-RD on 2020/1/9.
//  Copyright © 2020 JETEC ELETRONICS. All rights reserved.
//

import Foundation
enum Difficulty: String {
    case simple, normal, extreme, savage, ultimate
}

struct Dungeon: Codable {
    let version: String
    let id: Int
    let key: String
    let difficulty: String
    let chapters: [Chapter]
}

struct Chapter: Codable {
    let id: Int
    let key: String
    let time: Int
    let il: Int
    let rewards: [Rewards]
    let timeline: [String: String]
    
}

struct Rewards: Codable {
    let part: String
    let il: Int
}
