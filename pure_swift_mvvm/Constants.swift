//
//  Constants.swift
//  pure_swift_mvvm
//
//  Created by Huy Nguyễn on 8/29/18.
//  Copyright © 2018 Huy Nguyen. All rights reserved.
//

import Foundation

struct Constants {
    
    // APPLICATION
    struct App {
        
        
        // Main
        static let isDebugJSON = true
        static let isHTTPS = false
        
        
        // Base
        static let BaseURL: String = Constants.App.isHTTPS ? "https://" : "http://" + Constants.App.BaseAPIURL
        
        #if DEBUG // -> Development
        
            static let BaseAPIURL = "virtserver.swaggerhub.com/chakritw/tamboon-api/1.0.0"
        
        #else // -> Production
        
            static let BaseAPIURL = "your.base.endpoint.production"
        
        #endif
    }
    
    // MARK:
    // MARK: PURE SWIFT MVVM
    struct APIEndPoint {
        
        static let CharityList = "/charities"
        
    }
}
