//
//  UITableView.swift
//  BUCKS
//
//  Created by Burak Oner on 19.02.2019.
//  Copyright © 2019 Burak Oner. All rights reserved.
//

import UIKit

extension UITableView {
    func register<T: UITableViewCell>(cellType: T.Type) -> Void {
        self.register(cellType.self, forCellReuseIdentifier: cellType.identifier)
    }
    func register<T: UITableViewCell>(cellType: T.Type) -> Void where T: Nibable {
        self.register(cellType.nib, forCellReuseIdentifier: cellType.identifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell>(cellType: T.Type) -> T  {
        guard let cell = self.dequeueReusableCell(withIdentifier: cellType.identifier) as? T else {
            fatalError("Couldn't dequeue cell from \(cellType.identifier)")
        }
        return cell
    }

}
