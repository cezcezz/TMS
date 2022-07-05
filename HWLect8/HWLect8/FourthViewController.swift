//
//  FourthViewController.swift
//  HWLect8
//
//  Created by Cezar_ on 5.07.22.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet var enteredStringLible: UILabel!
    @IBOutlet var nameOfFirstColorLabel: UILabel!
    @IBOutlet var nameOfRainbowLabel: UILabel!
    
    var nameOfFirstColorString: String = "Знать"
    var nameOfRainbowString: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameOfFirstColorLabel.text = nameOfFirstColorString
        nameOfRainbowLabel.text = nameOfRainbowString + "N"
        
    }
    @IBAction func didTapGoToNextScreenButton(){
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let FifthViewController: FifthViewController = str.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
        
        
        FifthViewController.modalPresentationStyle = .fullScreen
        FifthViewController.modalTransitionStyle = .crossDissolve
        
        FifthViewController.nameOfRainbowString = self.nameOfRainbowLabel.text ?? "KEKS"
        
        self.present(FifthViewController, animated: true)
        FifthViewController.enteredStringLible.text = self.enteredStringLible.text
    }

}
