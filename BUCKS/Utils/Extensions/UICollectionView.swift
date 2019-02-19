//
//  UICollectionView.swift
//  BUCKS
//
//  Created by Burak Oner on 19.02.2019.
//  Copyright © 2019 Burak Oner. All rights reserved.
//

import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell>(cellType: T.Type) -> Void {
        self.register(cellType, forCellWithReuseIdentifier: cellType.identifier)
    }
    
    func register<T: UICollectionViewCell>(cellType: T.Type) where T: Nibable {
        self.register(cellType.nib, forCellWithReuseIdentifier: cellType.identifier)
    }
    
    func dequeueCell<T: UICollectionViewCell>(cellType: T.Type, indexPath: IndexPath) -> T{
        guard let  cell = self.dequeueReusableCell(withReuseIdentifier: cellType.identifier, for: indexPath) as? T else {
            fatalError("Couldn't dequeue cell with identifier: \(cellType.identifier)")
        }
        return cell
    }
}
