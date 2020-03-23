//
//  AppUserDefaults.swift
//  CreateAccountPOC
//
//  Created by Pramod Kumar on 23/03/20.
//  Copyright © 2020 Pramod Kumar. All rights reserved.
//

import Foundation

typealias JSON = [String:Any]

enum AppUserDefaults { }

extension AppUserDefaults {
    
    static func value(forKey key: Key,
                      file : String = #file,
                      line : Int = #line,
                      function : String = #function) -> Any? {
        
        return UserDefaults.standard.object(forKey: key.rawValue)
    }
    
    static func value<T>(forKey key: Key,
                      fallBackValue : T,
                      file : String = #file,
                      line : Int = #line,
                      function : String = #function) -> T? {
        
        guard let value = UserDefaults.standard.object(forKey: key.rawValue) as? T else {
            
            debugPrint("No Value Found in UserDefaults\nFile : \(file) \nFunction : \(function)")
            return nil
        }
        
        return value
    }
    
    static func save(value : Any, forKey key : Key) {
        
        UserDefaults.standard.set(value, forKey: key.rawValue)
        UserDefaults.standard.synchronize()
    }
    
    static func removeValue(forKey key : Key) {
        
        UserDefaults.standard.removeObject(forKey: key.rawValue)
        UserDefaults.standard.synchronize()
    }
    
    static func removeAllValues() {
        let appDomain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: appDomain)
        UserDefaults.standard.synchronize()
    }
}


extension AppUserDefaults {
    
    enum Key : String {
        
        case languagePreference
        case accessToken
    }
}



