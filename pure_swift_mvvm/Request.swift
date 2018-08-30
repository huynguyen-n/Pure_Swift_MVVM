//
//  Requestable.swift
//  pure_swift_mvvm
//
//  Created by Huy Nguyễn on 8/29/18.
//  Copyright © 2018 Huy Nguyen. All rights reserved.
//

import Foundation

//  MARK:- Define Request Entities

public typealias Parameters = [String: Any?]?
public typealias HeaderParameter = [String: String]

enum Error: Swift.Error {
    case invalidURL
    case noData
}

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}

//  MARK:- Main Request Features
protocol Request {
    
    associatedtype CodableResponse: Codable
    
    var basePath: String { get }
    
    var endpoint: String { get }
    
    var httpMethod: HTTPMethod { get }
    
    var param: Parameters? { get }
    
    func decode(data: Data) -> CodableResponse?
}


