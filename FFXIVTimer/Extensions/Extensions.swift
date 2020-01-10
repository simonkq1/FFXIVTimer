//
//  Extensions.swift
//  FFXIVTimer
//
//  Created by Jetec-RD on 2020/1/10.
//  Copyright © 2020 JETEC ELETRONICS. All rights reserved.
//

import Foundation

extension String {
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
    func convertToJsonObject() -> Any? {
        var json: Any?
        do {
            try? json = JSONSerialization.jsonObject(with: self.data(using: String.Encoding.utf8) ?? Data([0x00]),
                                                     options: JSONSerialization.ReadingOptions.allowFragments)
        }
        return json
    }
    
    func convertToModel<T: Codable>(type: T.Type) -> [T] {
        let decoder = JSONDecoder()
        var array: [T] = []
        do {
            array = try decoder.decode([T].self, from: self.data(using: String.Encoding.utf8) ?? Data())
        }catch {
            print(error)
        }
        return array
    }
    
}
