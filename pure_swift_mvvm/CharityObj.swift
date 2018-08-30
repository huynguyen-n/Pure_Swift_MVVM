//
//  CharityObj.swift
//  pure_swift_mvvm
//
//  Created by Huy Nguyễn on 8/29/18.
//  Copyright © 2018 Huy Nguyen. All rights reserved.
//

import Foundation

struct CharityObj: Codable {

    public private(set) var id: Int
    public private(set) var name: String
    public private(set) var logo_url: URL
}

struct CharityObjs: Codable {
    public private(set) var data: [CharityObj]
    public private(set) var total: Int
}
