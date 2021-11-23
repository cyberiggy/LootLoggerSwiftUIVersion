//
//  Item.swift
//  LootLoggerSwiftVersion
//
//  Created by Ron Woodbury on 11/22/21.
//

import SwiftUI

struct Item: Identifiable, Equatable {
    var id = UUID()
    var name: String
    var serialNumber: String
    var value: String
}

extension Item {
    static func all() -> [Item] {
        return [
            Item(name: "Camera", serialNumber: "00KJ0034", value: "400"),
            Item(name: "Microwave", serialNumber: "101-44-LY02", value: "200"),
            Item(name: "Blender", serialNumber: "ST20030", value: "Priceless"),
            Item(name: "Lawn Mower", serialNumber: "443908882209", value: "Worthless"),

        
        ]
    }
}
