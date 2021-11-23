//
//  ItemStore.swift
//  LootLoggerSwiftVersion
//
//  Created by Ron Woodbury on 11/22/21.
//

import SwiftUI

class ItemStore: ObservableObject {
    @Published var items = Item.all()
}
