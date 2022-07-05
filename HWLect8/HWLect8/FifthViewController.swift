//
//  FifthViewController.swift
//  HWLect8
//
//  Created by Cezar_ on 5.07.22.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet var enteredStringLible: UILabel!
    @IBOutlet var nameOfFirstColorLabel: UILabel!
    @IBOutlet var nameOfRainbowLabel: UILabel!
    
    var nameOfFirstColorString: String = "Где"
    var nameOfRainbowString: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameOfRainbowLabel.text = nameOfRainbowString + "B"
        nameOfFirstColorLabel.text = nameOfFirstColorString
        
    }


    @IBAction func didTapGoToNextScreenButton(){
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let SixthViewController: SixthViewController = str.instantiateViewController(withIdentifier: "SixthViewController") as! SixthViewController
        
        
        
        SixthViewController.modalPresentationStyle = .fullScreen
        SixthViewController.modalTransitionStyle = .crossDissolve
        
        SixthViewController.nameOfRainbowString = self.nameOfRainbowLabel.text ?? "Keks"
        
        self.present(SixthViewController, animated: true)
        SixthViewController.enteredStringLible.text = self.enteredStringLible.text
    }
}
