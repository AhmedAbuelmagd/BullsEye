//
//  localized.swift
//  BullsEye
//
//  Created by Ahmed Abuelmagd on 8/20/20.
//  Copyright © 2020 Ahmed Abuelmagd. All rights reserved.
//

import UIKit

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    func containsWithoutIgnoringCase(find: String) -> Bool{
        return self.range(of: find) != nil
    }
    
    func containsIgnoringCase(find: String) -> Bool{
        return self.range(of: find, options: .caseInsensitive) != nil
    }
}
