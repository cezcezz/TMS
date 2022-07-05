//
//  SixthViewController.swift
//  HWLect8
//
//  Created by Cezar_ on 5.07.22.
//

import UIKit

class SixthViewController: UIViewController {

    @IBOutlet var enteredStringLible: UILabel!
    @IBOutlet var nameOfFirstColorLabel: UILabel!
    @IBOutlet var nameOfRainbowLabel: UILabel!
    
    var nameOfFirstColorString: String = "Сидит"
    var nameOfRainbowString: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameOfFirstColorLabel.text = nameOfFirstColorString
        nameOfRainbowLabel.text = nameOfRainbowString  + "O"
        
    }
    @IBAction func didTapGoToNextScreenButton(){
        let str: UIStoryboard = UIStoryboard(name: "Completed", bundle: nil)
        let SeventhViewController: SeventhViewController = str.instantiateViewController(withIdentifier: "SeventhViewController") as! SeventhViewController
        
        SeventhViewController.modalPresentationStyle = .fullScreen
        SeventhViewController.modalTransitionStyle = .crossDissolve
        
        SeventhViewController.nameOfRainbowString = nameOfRainbowLabel.text ?? "KEK"
        
        self.present(SeventhViewController, animated: true)
        SeventhViewController.enteredStringLible.text = self.enteredStringLible.text
        
    }

}
