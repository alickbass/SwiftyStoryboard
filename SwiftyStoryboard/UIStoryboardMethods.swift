//
//  UIStoryboardMethods.swift
//  SwiftyStoryboard
//
//  Created by Oleksii on 08/08/16.
//  Copyright © 2016 Oleksii Dykan. All rights reserved.
//

import UIKit

public extension Storyboard {
    static var storyboard: UIStoryboard {
        return UIStoryboard(name: Self.fileName, bundle: nil)
    }
}

public extension Storyboard where ControllerId.RawValue == String {
    static func instantiateViewController(with identifier: ControllerId) -> UIViewController {
        return Self.storyboard.instantiateViewControllerWithIdentifier(identifier.rawValue)
    }
}
