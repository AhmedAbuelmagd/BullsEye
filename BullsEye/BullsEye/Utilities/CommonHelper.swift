//
//  CommonHelper.swift
//  BullsEye
//
//  Created by Ahmed Abuelmagd on 8/20/20.
//  Copyright © 2020 Ahmed Abuelmagd. All rights reserved.
//

import UIKit
import MOLH

public func mainQueue(_ closure: @escaping () -> Void) {
    DispatchQueue.main.async(execute: closure)
}

//hi -> Hindi ltr
//ar -> Arabic rtl
//Bengali
//Urdu

// MARK: - change current app language
public func changeAppLanguage(controller: UIViewController, resetControllerId: String) {
    let newLang = MOLHLanguage.currentAppleLanguage() == "hi" ? "en" : "hi"
    MOLHLanguage.setAppleLAnguageTo(newLang)
    UIView.appearance().semanticContentAttribute = newLang == "ar" ? .forceRightToLeft : .forceLeftToRight
    pushToView(withId: resetControllerId)
}
func pushToView(withId: String) {
    let rootviewcontroller: UIWindow = ((UIApplication.shared.delegate?.window)!)!
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    rootviewcontroller.rootViewController = storyboard.instantiateViewController(withIdentifier: withId)
    let mainwindow = (UIApplication.shared.delegate?.window!)!
    UIView.transition(with: mainwindow, duration: 0.5, options: [.showHideTransitionViews], animations: nil, completion: nil)
}
