//
//  UITableViewCell.swift
//  pure_swift_mvvm
//
//  Created by Huy Nguyễn on 8/30/18.
//  Copyright © 2018 Huy Nguyen. All rights reserved.
//

import UIKit

extension UITableViewCell {
    
    static var identifier: String {
        return String(describing: self)
    }
}

extension UITableView {
    
    func register<T: CellIdentifier>(_ viewType: T.Type) {
        self.register(viewType.nib, forCellReuseIdentifier: viewType.identifier)
    }
}
