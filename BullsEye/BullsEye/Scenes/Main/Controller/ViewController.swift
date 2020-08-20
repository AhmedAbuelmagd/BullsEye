//
//  ViewController.swift
//  BullsEye
//
//  Created by Ahmed Abuelmagd on 8/20/20.
//  Copyright © 2020 Ahmed Abuelmagd. All rights reserved.
//

import UIKit
import MOLH

class ViewController: UIViewController {

    let alertServices = AlertService()
    @IBOutlet weak var languageLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        languageLbl.text = "lang".localized
        // Do any additional setup after loading the view.
    }

    @IBAction func btnClicked(_ sender: Any) {
        let alertVC = AlertService.alert(title: "Alert" , body: "The body of alert", btnTitle: "Confirm") {
            //Do what you want to do
            print("This  is clus")
        }
        present(alertVC, animated: true, completion: nil)
    }
    @IBAction func languageBtnClicked(_ sender: UIButton) {
        print("languageBtnClicked")
        changeAppLanguage(controller: self, resetControllerId: "ViewController")
        MOLH.reset()
    }
}
