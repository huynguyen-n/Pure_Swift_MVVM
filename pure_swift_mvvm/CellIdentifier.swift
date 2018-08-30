//
//  Identifier.swift
//  pure_swift_mvvm
//
//  Created by Huy Nguyễn on 8/29/18.
//  Copyright © 2018 Huy Nguyen. All rights reserved.
//

import UIKit

protocol CellIdentifier {
    
    static var nib: UINib { get }
    
    static var identifier: String { get }
}

extension CellIdentifier {
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
}
