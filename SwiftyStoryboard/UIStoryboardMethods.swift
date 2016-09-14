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
    public static func instantiateViewController<T: UIViewController>(with identifier: ControllerId) -> T {
        guard let controller = Self.storyboard.instantiateViewController(withIdentifier: identifier.rawValue) as? T else {
            fatalError("Could not instantiate controller of given type")
        }
        return controller
    }
    
    public static func instantiateInitialViewController<T: UIViewController>() -> T {
        guard let controller = Self.storyboard.instantiateInitialViewController() as? T else {
            fatalError("Could not instantiate initial controller of given type")
        }
        return controller
    }
}
