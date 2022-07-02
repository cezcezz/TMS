//
//  FirstViewController.swift
//  lect8
//
//  Created by Cezar_ on 25.04.22.
//
import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var aloneLabel: UILabel!
    
    
    var tempLabel = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        aloneLabel.text = tempLabel
    }
    
    
    
    @IBAction func didTapFirstViewControllerButton(){
        let str: UIStoryboard = UIStoryboard(name: "Settings", bundle: nil)
        
        let vc: SettingsViewController = str.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
        
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        
        vc.tempVC = "World"
        
        self.present(vc, animated: true)
    }

}
