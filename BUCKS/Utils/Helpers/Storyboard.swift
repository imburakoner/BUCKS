//
//  Storyboard.swift
//  BUCKS
//
//  Created by Burak Oner on 19.02.2019.
//  Copyright © 2019 Burak Oner. All rights reserved.
//

import UIKit

enum Storyboard: String {
    case Main
}

extension Storyboard {
    func instantiate<VC: UIViewController>(vc type: VC.Type) -> VC {
        let storyboard = UIStoryboard(name: self.rawValue, bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: type.identifier) as? VC else {
            fatalError("Error instaniating \(type.identifier) from \(self.rawValue)")
        }
        return viewController
    }
}

