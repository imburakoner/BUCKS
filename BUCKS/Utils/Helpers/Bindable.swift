//
//  Bindable.swift
//  BUCKS
//
//  Created by Burak Oner on 19.02.2019.
//  Copyright © 2019 Burak Oner. All rights reserved.
//

import UIKit

protocol Bindable {
    associatedtype ViewModelType
    
    var viewModel: ViewModelType! { get set }
    
    func render()
}

extension Bindable where Self: UIViewController {
    mutating func bind(viewModel model: Self.ViewModelType) {
        self.viewModel = model
        loadViewIfNeeded()
        render()
    }
}
