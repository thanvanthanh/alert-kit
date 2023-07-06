//
//  UILabelExtension.swift
//  AlertKit
//
//  Created by Thân Văn Thanh on 06/07/2023.
//

import UIKit

extension UILabel {
    
    func layoutDynamicHeight(x: CGFloat, y: CGFloat, width: CGFloat) {
        frame = CGRect.init(x: x, y: y, width: width, height: frame.height)
        sizeToFit()
        if frame.width != width {
            frame = .init(x: x, y: y, width: width, height: frame.height)
        }
    }
}
