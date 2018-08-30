//
//  UIImage.swift
//  pure_swift_mvvm
//
//  Created by Huy Nguyễn on 8/29/18.
//  Copyright © 2018 Huy Nguyen. All rights reserved.
//

import UIKit

extension UIImage {
    
    convenience init(_ url: URL) {
        self.init()
    }
    
//    fileprivate func loadImage(with url: URL) -> UIImage? {
//        let session = URLSession(configuration: .default)
//        let downloadPicTask = session.dataTask(with: url) { (data, response, error) in
//            
//            guard let _ = error else { return }
//            
//            guard let _ = response as? HTTPURLResponse else { return }
//            
//            guard let data = data else { return }
//            
//            guard let image = UIImage(data: data) else { return }
//        }
//    }
}
