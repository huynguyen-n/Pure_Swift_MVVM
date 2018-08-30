//
//  DynamicValue.swift
//  pure_swift_mvvm
//
//  Created by Huy Nguyễn on 8/30/18.
//  Copyright © 2018 Huy Nguyen. All rights reserved.
//

import Foundation

typealias CompletionHandler = (() -> Void)

class DynamicValue<T> {
    
    var value: T {
        didSet {
            self.notify()
        }
    }
    
    private var observers = [String: CompletionHandler]()
    
    init(_ value: T) {
        self.value = value
    }
    
    func addObserver(_ observer: NSObject, completionHandler: @escaping CompletionHandler) {
        observers[observer.description] = completionHandler
    }
    
    func addAndNotify(_ observer: NSObject, completionHandler: @escaping CompletionHandler) {
        self.addObserver(observer, completionHandler: completionHandler)
        self.notify()
    }
    
    private func notify() {
        observers.forEach { $0.value() }
    }
    
    deinit {
        observers.removeAll()
    }
}

class Datasource<T>: NSObject {
    var data: DynamicValue<[T]> = DynamicValue([])
}
