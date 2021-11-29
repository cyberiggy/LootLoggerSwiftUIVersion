//
//  ItemsView.swift
//  LootLoggerSwiftVersion
//
//  Created by Ron Woodbury on 11/22/21.
//

import SwiftUI



struct ItemsView: View {

    // **************************************
    // Implement style changes to NavBarTitle
    // **************************************
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.systemTeal,
            .font: UIFont(name:"Arial", size: 30)!]
        }
    
    
    // An ObservedObject is an object that
    // the view is observing for changes.
    // Normally used for external state.
    @ObservedObject var itemStore = ItemStore()

    var body: some View {
        NavigationView {
            List {
                ForEach(itemStore.items) { item in
                    // Pass binding to item into DetailView
                    NavigationLink(destination: DetailView(item: self.$itemStore.items[self.itemStore.items.firstIndex(of: item)!])) {
                        RowView(item: item)
                }

                    
                    // ****************************************
                    // Alternate the color of rows in the list.
                    // ****************************************
                    .listRowBackground((self.itemStore.items.firstIndex(of: item)! % 2 == 0) ? Color(UIColor(red: 0.79, green: 0.94, blue: 1.0, alpha: 1.0)) : Color(.white))
                    .listRowSeparator(.hidden)
                }.onMove(perform: move)
                .navigationBarTitleDisplayMode(.inline)
                    
                
                    // ************************************
                    // Add image and title to the Tool Bar.
                    // ************************************
                    .toolbar {
                            
                        ToolbarItem(placement: .principal) {
                            HStack {
                                Image(systemName: "house.fill")
                                Text("LootLogger").font(.headline)
                                    
                            }
                        }
                    }
            }
            .toolbar {
                EditButton()
            }
            
            // ***********************************************
            // Add a plus-sign (as a button) to the Nav Bar
            // to allow user to add a new item to the list.
            // ***********************************************
            .navigationBarItems(leading:
                Button(action: {
                    let item = Item(name: "New Item", serialNumber: "0000", value: "00")
                    self.itemStore.items.append(item)
                
                
                }) {
                    Image(systemName: "plus")
                        .tint(Color.black)
                }.navigationBarTitle("Loot Logger: SwiftUI")
            )
        }
    
    }
    
    func move(from source: IndexSet, to destination: Int) {
        itemStore.items.move(fromOffsets: source, toOffset: destination)
    }

}
    



