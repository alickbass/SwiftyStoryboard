//
//  NSStoryboardMethods.swift
//  SwiftyStoryboard
//
//  Created by Oleksii on 14/08/16.
//  Copyright © 2016 Oleksii Dykan. All rights reserved.
//

import Cocoa

public extension Storyboard {
    static var storyboard: NSStoryboard {
        return NSStoryboard(name: Self.fileName, bundle: nil)
    }
}

public extension Storyboard where ControllerId.RawValue == String {
    public static func instantiateViewController<T: NSViewController>(with identifier: ControllerId) -> T {
        guard let controller = Self.storyboard.instantiateController(withIdentifier: identifier.rawValue) as? T else {
            fatalError("Could not instantiate view controller of given type")
        }
        return controller
    }
    
    public static func instantiateWindowController<T: NSWindowController>(with identifier: ControllerId) -> T {
        guard let controller = Self.storyboard.instantiateController(withIdentifier: identifier.rawValue) as? T else {
            fatalError("Could not instantiate window controller of given type")
        }
        return controller
    }
    
    public static func instantiateInitialController<T: AnyObject>() -> T {
        guard let controller = Self.storyboard.instantiateInitialController() as? T else {
            fatalError("Could not instantiate initial controller of given type")
        }
        return controller
    }
}
