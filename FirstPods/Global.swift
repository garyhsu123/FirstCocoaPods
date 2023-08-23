//
//  Global.swift
//  FirstPods
//
//  Created by Garry Hsu on 2023-08-23.
//

import Foundation

private var SHARE: TestClass?

class TestClass {
    var date: Date
    var label: String
    
    init(label: String) {
        self.label = label
        date = Date()
    }
}

func create(label: String) {
    guard SHARE == nil else {
        return
    }
    SHARE = TestClass(label: label)
}

func printInfo() {
    guard let shared = SHARE else {
        print("shared is not initialized yet.")
        return
    }
    print("shared is created from \(shared.label) at \(shared.date.timeIntervalSince1970)")
}
