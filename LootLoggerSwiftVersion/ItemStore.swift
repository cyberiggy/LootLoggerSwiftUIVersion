//
//  ItemStore.swift
//  LootLoggerSwiftVersion
//
//  Created by Ron Woodbury on 11/22/21.
//

import SwiftUI

class ItemStore: ObservableObject {
    
    // A property marked with @Published is “published”,
    // it is turned into a publisher that emits data.
    // You can subscribe to data that's published.
    
    @Published var items = Item.all()
}
