//
//  ThirdViewController.swift
//  HWLect8
//
//  Created by Cezar_ on 5.07.22.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var enteredStringLible: UILabel!
    @IBOutlet var nameOfFirstColorLabel: UILabel!
    @IBOutlet var nameOfRainbowLabel: UILabel!
    
    var nameOfFirstColorString: String = "Желает"
    var nameOfRainbowString: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameOfFirstColorLabel.text = nameOfFirstColorString
        nameOfRainbowLabel.text = nameOfRainbowString + "I"
        
    }

    @IBAction func didTapGoToNextScreenButton(){
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let FourthViewController: FourthViewController = str.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
        
        FourthViewController.modalPresentationStyle = .fullScreen
        FourthViewController.modalTransitionStyle = .crossDissolve
        
        FourthViewController.nameOfRainbowString = nameOfRainbowLabel.text ?? "keks"
        
        self.present(FourthViewController, animated: true)
        FourthViewController.enteredStringLible.text = self.enteredStringLible.text
        
    }
    
}
