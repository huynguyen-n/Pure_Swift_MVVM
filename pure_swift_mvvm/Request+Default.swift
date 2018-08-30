//
//  Request+Default.swift
//  pure_swift_mvvm
//
//  Created by Huy Nguyễn on 8/29/18.
//  Copyright © 2018 Huy Nguyen. All rights reserved.
//

import Foundation

extension Request {
    
    var basePath: String { return Constants.App.BaseURL }
    
    var param: Parameter? { return nil }
    
    var addionalHeader: HeaderParameter? { return nil }
    
    var defaultHeader: HeaderParameter { return ["Accept": "application/json", "Accept-Language": "en_US"] }
    
    var urlPath: String { return basePath + endpoint }
    
    var url: URL { return URL(string: urlPath)! }
    
    func excute(onSuccess: @escaping (CodableResponse) -> Void, onError: @escaping (Error) -> Void) {
        
        let request = self.buildURLRequest()
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard error == nil else {
                onError(error as! Error)
                return
            }
            
            guard let data = data else {
                onError(Error.noData)
                return
            }
            
            guard let result = self.decode(data: data) else {
                onError(Error.noData)
                return
            }

            DispatchQueue.main.async {
                onSuccess(result)
            }
            
        }.resume()
    }
    
    private func buildURLRequest() -> URLRequest {
        
        var urlRequest = URLRequest(url: self.url)
        urlRequest.httpMethod = self.httpMethod.rawValue
        urlRequest.timeoutInterval = TimeInterval(10 * 1000)
        
        // Encode param
        do {
            if let params = self.param {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: params!, options: [])
            }
        } catch { return urlRequest }
        
        // Add addional Header if need
        if let additinalHeaders = self.addionalHeader {
            for (key, value) in additinalHeaders {
                urlRequest.addValue(value, forHTTPHeaderField: key)
            }
        }
        
        return urlRequest
    }
}
