//
//  ViewController.swift
//  lect8
//
//  Created by Cezar_ on 25.04.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapOneButton() {
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let firstViewController = str.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        
        firstViewController.tempLabel = "Hello!!!!!!!"
        self.present(firstViewController, animated: true)
    }
    
    
    @IBAction func didTapThirdButton(){
        let str: UIStoryboard = UIStoryboard(name: "Settings", bundle: nil)
        
        let vc: SettingsViewController = str.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
        
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        
        vc.tempVC = "Hello"
        
        self.present(vc, animated: true)
    }
}

