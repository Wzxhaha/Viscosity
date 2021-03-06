//
//  Extension.swift
//  Viscosity
//
//  Created by WzxJiang on 16/7/21.
//  Copyright © 2016年 WzxJiang. All rights reserved.
//
//  https://github.com/Wzxhaha/Viscosity
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.


import UIKit

public extension UIView {
    public var vis: Manager {
        return Manager(withView: self)
    }
}

// MARK: - VisNumeric

public protocol VisNumeric {
    var vis_floatValue: CGFloat { get }
}

extension Int: VisNumeric {
    public var vis_floatValue: CGFloat { return CGFloat(self) }
}

extension Float: VisNumeric {
    public var vis_floatValue: CGFloat { return CGFloat(self) }
}

extension Double: VisNumeric {
    public var vis_floatValue: CGFloat { return CGFloat(self) }
}
extension CGFloat: VisNumeric {
    public var vis_floatValue: CGFloat { return self }
}

// MARK: - VisStruct

public protocol VisStruct {
    var vis_members: [CGFloat] { get }
}

extension CGPoint: VisStruct {
    public var vis_members: [CGFloat] {
        return [x, y]
    }
}

extension CGSize: VisStruct {
    public var vis_members: [CGFloat] {
        return [width, height]
    }
}

extension UIEdgeInsets: VisStruct {
    public var vis_members: [CGFloat] {
        return [top, left, -bottom, -right]
    }
}

// MARK: - VisObject

public protocol VisObject: class {}
extension UIView: VisObject {}
extension Constraint: VisObject {}

