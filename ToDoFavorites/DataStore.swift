//
//  DataStore.swift
//  ToDoFavorites
//
//  Created by Vasileios Gkreen on 23/02/2020.
//  Copyright © 2020 Vasileios Gkreen. All rights reserved.
//

import SwiftUI
import Combine

final class DataStore: ObservableObject {
    
    let didChange = PassthroughSubject<DataStore, Never>()
    
    @UserDefault(key: "firstLaunch", defaultValue: true)
    var firstLaunch: Bool{
        didSet{
            didChange.send(self)
        }
    }
    
}
