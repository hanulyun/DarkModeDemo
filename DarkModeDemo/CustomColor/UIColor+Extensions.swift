//
//  UIColor+Extensions.swift
//  DarkModeDemo
//
//  Created by HanulYun-Comp on 2020/03/04.
//  Copyright © 2020 Yun. All rights reserved.
//

import UIKit

public enum Color: String {
    case background = "backgroundColor"
    case text = "textColor"
}

extension UIColor {
    static func colorSet(_ colorRawValue: Color) -> UIColor {
        var color: UIColor = .black
        if #available(iOS 11, *) {
            color = UIColor(named: colorRawValue.rawValue)!
        } else {
            switch colorRawValue {
            case .background:
                color = UIColor(red: 244, green: 241, blue: 238, alpha: 1)
            case .text:
                color = UIColor(red: 19, green: 51, blue: 55, alpha: 1)
            }
        }
        return color
    }
}
