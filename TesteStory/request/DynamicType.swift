//
//  DynamicType.swift
//  TesteStory
//
//  Created by Devmaker on 04/12/19.
//  Copyright © 2019 Devmaker. All rights reserved.
//

import Foundation

class DynamicType<T> {
    typealias Listener = (T) -> ()
    private var listener: Listener?
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    func bindAndTrigger(_ listenerIn: Listener?) {
        self.listener = listenerIn
        listener?(value)
    }
    
    func bind(_ listenerIn: Listener?) {
        self.listener = listenerIn
    }
    
    init(_ v: T) {
        value = v
    }
}
