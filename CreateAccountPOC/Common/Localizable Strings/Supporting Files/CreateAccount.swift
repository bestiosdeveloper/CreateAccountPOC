//
//  CreateAccount.swift
//  CreateAccountPOC
//
//  Created by Pramod Kumar on 23/03/20.
//  Copyright © 2020 Pramod Kumar. All rights reserved.
//

import Foundation

struct CreateAccount {
    
    static let filename = "CreateAccount"
    
    static var letCreateAccountMessage: String {
        return Localization.localize(key: "letCreateAccountMessage", fileName: filename)
    }
    
    static var newBornMessage: String {
        return Localization.localize(key: "newBornMessage", fileName: filename)
    }
    
    static var createNew: String {
        return Localization.localize(key: "createNew", fileName: filename)
    }
    
    static var magic: String {
        return Localization.localize(key: "magic", fileName: filename)
    }
}
