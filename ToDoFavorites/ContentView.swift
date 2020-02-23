//
//  ContentView.swift
//  ToDoFavorites
//
//  Created by Vasileios Gkreen on 23/02/2020.
//  Copyright © 2020 Vasileios Gkreen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var favsOnly: Bool = false
    @State var displayAlert: Bool = false
    
    @EnvironmentObject var dataStore: DataStore
    
    var body: some View {
        
        List {
            Toggle(isOn: $favsOnly) {
                Text(" ⭐ only")
            }.padding(.leading, 4)
            
            ForEach (itemData){ item in
                if !self.favsOnly || item.favorite {
                    ItemRow(item: item)
                }
            }
            
            }.onAppear(perform: showAlert)
            .alert(isPresented: $displayAlert) { () -> Alert in
                    Alert(
                        title: Text("Wellcome"),
                        message: Text("Wellcome to this great app"),
                        dismissButton: .default(Text("Let's start!")))
                }
        
        
    }
    
    
    func showAlert() {
        if dataStore.firstLaunch {
            displayAlert = true
            dataStore.firstLaunch = false
        }
    }
}


struct ItemRow: View {
    
    var item: RandomItem
    
    var body: some View {
        
        HStack{
            Text(item.name)
            Spacer()
            if item.favorite {
                Text("⭐")
            }
        }.padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(DataStore())
    }
}
