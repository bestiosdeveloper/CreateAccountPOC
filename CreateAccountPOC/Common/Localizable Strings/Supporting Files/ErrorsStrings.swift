//
//  ErrorsStrings.swift
//  CreateAccountPOC
//
//  Created by Pramod Kumar on 23/03/20.
//  Copyright © 2020 Pramod Kumar. All rights reserved.
//

import Foundation

struct ErrorsStrings {
    
    static let filename = "Errors"
    
    static var nothingToShow: String {
        return Localization.localize(key: "nothingToShow", fileName: filename)
    }
    
    static var noInternet: String {
        return Localization.localize(key: "noInternet", fileName: filename)
    }
}
