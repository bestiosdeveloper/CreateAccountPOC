//
//  APICaller.swift
//  CreateAccountPOC
//
//  Created by Pramod Kumar on 23/03/20.
//  Copyright © 2020 Pramod Kumar. All rights reserved.
//

import Foundation

class APICaller {
    
    //webservice complition clouser, will call for success and failure both
    internal typealias complitionClosure = ((_ success : Bool, _ JSON : JSON) -> Void)
    internal typealias failureClosure = ((_ errors: [Int]) -> Void)
    
    static let shared = APICaller()
    
    private init() {}
    
    //Common handler/parser for all webservices response
    func handleResponse(_ response: JSON, success: complitionClosure, failure: failureClosure) {
        
        if let isOk = response["success"] as? Bool, isOk {
            //Success Handling
            success(isOk, response)
        }
        else {
            failure([])
        }
    }
}
