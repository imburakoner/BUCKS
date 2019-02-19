//
//  Nibable.swift
//  BUCKS
//
//  Created by Burak Oner on 19.02.2019.
//  Copyright © 2019 Burak Oner. All rights reserved.
//

import UIKit

protocol Nibable: class {
    static var nib: UINib { get }
}

extension Nibable where Self: Identifiable {
    static var nib: UINib {
        return UINib(nibName: self.identifier, bundle: Bundle(for: self))
    }
}
