//
//  AlertService.swift
//  BullsEye
//
//  Created by Ahmed Abuelmagd on 8/20/20.
//  Copyright © 2020 Ahmed Abuelmagd. All rights reserved.
//

import UIKit

class AlertService {
    class func alert(title: String, body: String, btnTitle: String, completion: @escaping () -> Void ) -> AlertVC {
        let storyboard = UIStoryboard.init(name: STORYBOARDS.alert.rawValue, bundle: .main)
        let alertVC = storyboard.instantiateViewController(identifier: IDENTIFIERS.alert.rawValue) as AlertVC
        alertVC.alertTitle = title
        alertVC.alertBody = body
        alertVC.actionBtnTitle = btnTitle
        alertVC.btnAction = completion
        return alertVC
    }
}
