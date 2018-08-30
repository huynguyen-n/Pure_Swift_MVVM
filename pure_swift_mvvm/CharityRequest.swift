//
//  CharityRequest.swift
//  pure_swift_mvvm
//
//  Created by Huy Nguyễn on 8/29/18.
//  Copyright © 2018 Huy Nguyen. All rights reserved.
//

import Foundation

struct CharityRequest: Request {
    
    func decode(data: Data) -> [CharityObj]? {
        do {
            let result = try JSONDecoder().decode(CharityObjs.self, from: data)
            
            return result.data
            
        } catch { return nil }
    }
    
    typealias CodableResponse = [CharityObj]
    
    var param: Parameters? {
        return nil        
    }
    
    var endpoint: String {
        return Constants.APIEndPoint.CharityList
    }
    
    var httpMethod: HTTPMethod {
        return .get
    }
    
}
