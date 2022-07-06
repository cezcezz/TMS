//
//  SettingsViewController.swift
//  Lect6P2
//
//  Created by Cezar_ on 5.07.22.

import UIKit

class SettingsViewController: UIViewController {

    let welcomString: String = "Hello my friend!"
    var pastViewControllerString: String = ""
    var welcomLabel: UILabel = UILabel(frame: CGRect(x: 100, y: 200, width: 200, height: 30))
    var pastViewControllerLabel: UILabel = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 20))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        welcomLabel.text = welcomString
        welcomLabel.textColor = .blue
        
        pastViewControllerLabel.text = pastViewControllerString
        pastViewControllerLabel.textColor = .purple
        
        self.view.addSubview(pastViewControllerLabel)
        self.view.addSubview(welcomLabel)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        welcomLabel.textColor = .purple
    }
    
    @IBAction func didTapCloseViewControllerButton(){
        self.dismiss(animated: true)
    }

}
