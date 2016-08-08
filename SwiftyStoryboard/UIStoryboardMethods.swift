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
    public static func instantiateViewController<T: UIViewController>(with identifier: ControllerId, type: T.Type? = nil) -> T? {
        return Self.storyboard.instantiateViewControllerWithIdentifier(identifier.rawValue) as? T
    }
    
    public static func instantiateInitialViewController<T: UIViewController>(type: T.Type? = nil) -> T? {
        return Self.storyboard.instantiateInitialViewController() as? T
    }
}
