//
//  Identifiable.swift
//  BUCKS
//
//  Created by Burak Oner on 19.02.2019.
//  Copyright © 2019 Burak Oner. All rights reserved.
//

import Foundation

protocol Identifiable: class {
    static var identifier: String { get }
}

extension Identifiable {
    static var identifier: String {
        return String(describing: self)
    }
}
