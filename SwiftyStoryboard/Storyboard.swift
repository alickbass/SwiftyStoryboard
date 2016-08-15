//
//  Storyboard.swift
//  SwiftyStoryboard
//
//  Created by Oleksii on 08/08/16.
//  Copyright © 2016 Oleksii Dykan. All rights reserved.
//

import Foundation

public protocol Storyboard {
    associatedtype ControllerId: RawRepresentable
    static var fileName: String { get }
}

public extension Storyboard {
    public static var fileName: String {
        return String(Self)
    }
}
