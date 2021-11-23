//
//  DetailView.swift
//  LootLoggerSwiftVersion
//
//  Created by Ron Woodbury on 11/22/21.
//

import SwiftUI

struct DetailView: View {

    let lightBlue: UIColor = UIColor(red: 0.79, green: 0.94, blue: 1.0, alpha: 0.5)
    
    @Binding var item: Item

    var body: some View {
        Form {
            HStack {
                Text("Description: ")
                TextField("", text: self.$item.name)
                    .background(Color(lightBlue))
            }
            HStack {
                Text("Serial Number: ")
                TextField("", text: self.$item.serialNumber)
                    .background(Color(lightBlue))
            }
            HStack {
                Text("Cost: ")
                TextField("", text: self.$item.value)
                    .background(Color(lightBlue))
            }
        }.navigationBarTitle(Text(item.name), displayMode: .inline)
            
    }
     
}


