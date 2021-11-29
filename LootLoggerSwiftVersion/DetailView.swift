//
//  DetailView.swift
//  LootLoggerSwiftVersion
//
//  Created by Ron Woodbury on 11/22/21.
//

import SwiftUI

struct DetailView: View {

    let lightBlue: UIColor = UIColor(red: 0.79, green: 0.94, blue: 1.0, alpha: 0.5)
    
    // We use @Binding to alter data outside the view.
    // In contrst to @State, which is used for data
    // that doesn't leave the view.

    @Binding var item: Item

    var body: some View {
        List {
            HStack {
                Text("Description: ")
                    .font(.system(size:14))
                TextField("", text: self.$item.name)
                    .padding(.leading, 3.0)
                    .background(Color(lightBlue))
            }
            HStack {
                Text("Serial Number: ")
                    .font(.system(size:14))
                TextField("", text: self.$item.serialNumber)
                    .padding(.leading, 3.0)
                    .background(Color(lightBlue))
            }
            HStack {
                Text("Cost: ")
                    .font(.system(size:14))
                TextField("", text: self.$item.value)
                    .padding(.leading, 3.0)
                    .background(Color(lightBlue))
            }
        }.navigationBarTitle(Text(item.name), displayMode: .inline)
            
    }
    
    
    
}


