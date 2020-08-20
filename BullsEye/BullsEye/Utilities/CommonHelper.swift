//
//  CommonHelper.swift
//  BullsEye
//
//  Created by Ahmed Abuelmagd on 8/20/20.
//  Copyright © 2020 Ahmed Abuelmagd. All rights reserved.
//

import UIKit

public func mainQueue(_ closure: @escaping ()->()){
    DispatchQueue.main.async(execute: closure)
}
