//
//  AlertVC.swift
//  BullsEye
//
//  Created by Ahmed Abuelmagd on 8/20/20.
//  Copyright © 2020 Ahmed Abuelmagd. All rights reserved.
//

import UIKit

class AlertVC: UIViewController {
    
    // MARK: - Variables & Constants
    var alertTitle = String()
    var alertBody = String()
    var actionBtnTitle = String()
    var btnAction: (() -> Void)?
    
    // MARK: - Outlets
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var bodyLbl: UILabel!
    @IBOutlet weak var cancelBtn: UIButton!
    @IBOutlet weak var actionBtn: UIButton!
    @IBOutlet weak var mainView: UIView!
    
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        initAlert()
    }
    
    // MARK: - Functions
    func initAlert() {
        mainQueue {
            self.mainView.layer.cornerRadius = 10
            self.mainView.clipsToBounds = true
            self.cancelBtn.layer.cornerRadius = 10
            self.actionBtn.layer.cornerRadius = 10
        }
        titleLbl.text = alertTitle
        bodyLbl.text = alertBody
        actionBtn.setTitle(actionBtnTitle, for: .normal)
    }
    
    // MARK: - Actions
    @IBAction func cancelBtnClicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func actionBtnClicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        btnAction?()
    }
    
}
