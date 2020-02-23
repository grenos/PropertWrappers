//
//  Data.swift
//  ToDoFavorites
//
//  Created by Vasileios Gkreen on 23/02/2020.
//  Copyright © 2020 Vasileios Gkreen. All rights reserved.
//

import SwiftUI

let itemData = [
    RandomItem(name: "Item1", favorite: true),
    RandomItem(name: "Item2", favorite: false),
    RandomItem(name: "Item3", favorite: true),
    RandomItem(name: "Item4", favorite: true),
    RandomItem(name: "Item5", favorite: false),
    RandomItem(name: "Item6", favorite: true)
]


struct RandomItem: Identifiable {
    let id: UUID
    let name: String
    let favorite: Bool
    
    
    init(name: String, favorite: Bool){
        self.id = UUID()
        self.name = name
        self.favorite = favorite
    }
}

