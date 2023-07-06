//
//  AlertHaptic.swift
//  AlertKit
//
//  Created by Thân Văn Thanh on 06/07/2023.
//

import UIKit

public enum AlertHaptic {
    
    case success
    case warning
    case error
    case none
    
    func impact() {
        let generator = UINotificationFeedbackGenerator()
        switch self {
        case .success:
            generator.notificationOccurred(UINotificationFeedbackGenerator.FeedbackType.success)
        case .warning:
            generator.notificationOccurred(UINotificationFeedbackGenerator.FeedbackType.warning)
        case .error:
            generator.notificationOccurred(UINotificationFeedbackGenerator.FeedbackType.error)
        case .none:
            break
        }
    }
}
