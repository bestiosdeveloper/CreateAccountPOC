//
//  EndPoints.swift
//  CreateAccountPOC
//
//  Created by Pramod Kumar on 23/03/20.
//  Copyright © 2020 Pramod Kumar. All rights reserved.
//

import Foundation

enum APIEndPoint: String {
    //MARK: - Base URLs
    case apiKey       = "apiKey"
    case baseUrlPath  = "baseUrlPath"

    //MARK: - Account URLs -

    case createAccount                  = "createAccount"
    
}

// MARK: - endpoint extension for url -
extension APIEndPoint {
    var path: String {
        switch self {
        case .baseUrlPath:
            return self.rawValue
        default:
            let tmpString = "\(APIEndPoint.baseUrlPath.rawValue)\(self.rawValue)"
            return tmpString.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed) ?? ""
        }
    }
}
