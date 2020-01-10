//
//  Constants.swift
//  FFXIVTimer
//
//  Created by Jetec-RD on 2020/1/10.
//  Copyright © 2020 JETEC ELETRONICS. All rights reserved.
//

import Foundation


class FilePath {
    static let information: String = Bundle.main.path(forResource: "information", ofType: "json") ?? ""
    static let dungeons: String = Bundle.main.path(forResource: "dungeons", ofType: "json") ?? ""
}
