//
//  GlobalConstants.swift
//  CreateAccountPOC
//
//  Created by Pramod Kumar on 23/03/20.
//  Copyright © 2020 Pramod Kumar. All rights reserved.
//

import UIKit
import PKLoader

typealias ResponseCallBack = (NSError?, Any?) -> Void

class GlobalConstants {
    static let shared = GlobalConstants()
    
    private init() {}
    
    // UI Keys (Navigation titles, button styles etc)
    static let PayloadKey = "PayloadKey"
}

extension GlobalConstants {
    func startLoading() {
        PKLoader.shared.startAnimating()
    }
    
    func stopLoading() {
        PKLoader.shared.stopAnimating()
    }
}
