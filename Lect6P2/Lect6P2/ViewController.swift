//
//  ViewController.swift
//  Lect6P2
//
//  Created by Cezar_ on 4.07.22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func didTapOpenFirstViewControllerButton(){
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let FirstViewController: FirstViewController = str.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        
        
        FirstViewController.customTitle = "World"
        self.present(FirstViewController, animated: true)
        FirstViewController.aloneLabel.text = "Hello"
        
        FirstViewController.aloneLabel.text = "\(a*a*a)"
    }
    
    
    @IBAction func didTapOpenSecondViewControllerButton(){
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let SecondViewController: SecondViewController = str.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        SecondViewController.modalPresentationStyle = .fullScreen
        
        
        self.present(SecondViewController, animated: true)
    }
    
    @IBAction func didTapOpenSettingViewController(){
        let str: UIStoryboard = UIStoryboard(name: "Settings", bundle: nil)
        let SettingsViewController: SettingsViewController = str.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
        SettingsViewController.modalPresentationStyle = .fullScreen
        SettingsViewController.modalTransitionStyle = .crossDissolve
        
        SettingsViewController.pastViewControllerString = "Main ViewController"
        
        self.present(SettingsViewController, animated: true)
}
    
    let a = 2
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    

}

