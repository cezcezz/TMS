//
//  SettingsViewController.swift
//  lect8
//
//  Created by Cezar_ on 25.04.22.
//


import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var settingsVCLabel: UILabel!
    var tempVC: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        settingsVCLabel.text = tempVC
    }
    
    @IBAction func didTapClose()
    {
        self.dismiss(animated: true)
    }
}

