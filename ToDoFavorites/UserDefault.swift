//
//  UserDefault.swift
//  ToDoFavorites
//
//  Created by Vasileios Gkreen on 23/02/2020.
//  Copyright © 2020 Vasileios Gkreen. All rights reserved.
//

import Foundation

@propertyWrapper

struct UserDefault<T> {
    let key: String
    let defaultValue: T
    
    var wrappedValue: T {
        get{
            
            return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
            
        }set{
            
            UserDefaults.standard.set(newValue, forKey: key)
            
        }
    }
}
