//
//  Storyboard.swift
//  SwiftyStoryboard
//
//  Created by Oleksii on 08/08/16.
//  Copyright © 2016 Oleksii Dykan. All rights reserved.
//

import Foundation

public protocol StoryboardType {
    associatedtype ControllerId: RawRepresentable
    static var fileName: String { get }
}

public extension StoryboardType {
    public static var fileName: String {
        return String(describing: Self.self)
    }
}
