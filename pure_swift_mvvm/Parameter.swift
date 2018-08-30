//
//  Parameters.swift
//  pure_swift_mvvm
//
//  Created by Huy Nguyễn on 8/29/18.
//  Copyright © 2018 Huy Nguyen. All rights reserved.
//

import Foundation

// MARK: - Generic param
protocol Parameter {
    
    func toDictionary() -> [String: Any]
}
