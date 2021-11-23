//
//  ContentView.swift
//  LootLoggerSwiftVersion
//
//  Created by Ron Woodbury on 11/22/21.
//

import SwiftUI



struct ContentView: View {

    
    // Implement style changes to NavBarTitle
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.systemTeal,
            .font: UIFont(name:"Arial", size: 30)!]
        }
    
    
    
    @ObservedObject var itemStore = ItemStore()

    var body: some View {
        NavigationView {
            List {
                ForEach(itemStore.items) { item in
                    // Pass binding to item into DetailsView
                    NavigationLink(destination: DetailView(item: self.$itemStore.items[self.itemStore.items.firstIndex(of: item)!])) {
                        RowView(item: item)
                    }
                    
                    // Added to alternate the color of rows in the list
                    .listRowBackground((self.itemStore.items.firstIndex(of: item)! % 2 == 0) ? Color(UIColor(red: 0.79, green: 0.94, blue: 1.0, alpha: 1.0)) : Color(.white))
                    .listRowSeparator(.hidden)
                }
                
            }
            
            // Add a new item to Loot Logger
            // This adds the "plus sign" button the the nav bar.
            .navigationBarItems(trailing:
                Button(action: {
                let item = Item(name: "New Item", serialNumber: "0000", value: "00")
                    self.itemStore.items.append(item)
                }) {
                    Image(systemName: "plus")
                }.navigationBarTitle("Loot Logger: SwiftUI")
              
            )
        }

    }

}
