//
//  AlertKitAPI.swift
//  AlertKit
//
//  Created by Thân Văn Thanh on 06/07/2023.
//

import UIKit

public enum AlertKitAPI {
    
    public static func present(title: String? = nil, subtitle: String? = nil, icon: AlertIcon? = nil, style: AlertViewStyle, haptic: AlertHaptic? = nil) {
        switch style {
        case .middle:
            guard let window = UIApplication.shared.mainKeyWindow else { return }
            let view = AlertMiddleView(title: title, subtitle: subtitle, icon: icon)
            view.haptic = haptic
            view.present(on: window)
        case .bottom:
            guard let window = UIApplication.shared.mainKeyWindow else { return }
            let view = AlertBottomView(title: title, subtitle: subtitle, icon: icon)
            view.haptic = haptic
            view.present(on: window)
        }
    }
}
