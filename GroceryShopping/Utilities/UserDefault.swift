//
//  UserDefault.swift
//  GroceryShopping
//
//  Created by Mohamed M3aty on 7/25/20.
//  Copyright © 2020 MohamedM3aty. All rights reserved.
//

import Foundation


@propertyWrapper
struct UserDefault<T> {
    let key: String
    let defaultValue: T

    init(_ key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }

    var wrappedValue: T {
        get {
            return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}


struct UserDefaultsConfig {
    @UserDefault("has_seen_app_introduction", defaultValue: false)
    static var isLoggedIn: Bool

    @UserDefault("username", defaultValue: "")
    static var username: String

    @UserDefault("token", defaultValue: "")
    static var token_key: String
}
