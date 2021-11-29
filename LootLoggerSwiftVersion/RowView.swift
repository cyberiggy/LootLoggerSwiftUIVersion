//
//  RowView.swift
//  LootLoggerSwiftVersion
//
//  Created by Ron Woodbury on 11/22/21.
//

import SwiftUI



struct RowView: View {
  
    let item: Item
    
    var body: some View {
        
        HStack {
            Text(item.name)
            Spacer()
            VStack(alignment: .trailing) {
                Text(item.serialNumber)
                Text(item.value)
            }.font(.system(size:11))
             .frame( alignment: .trailing)
        }
    }
}
