//
//  SeventhViewController.swift
//  HWLect8
//
//  Created by Cezar_ on 5.07.22.
//

import UIKit

class SeventhViewController: UIViewController {

    @IBOutlet var enteredStringLible: UILabel!
    @IBOutlet var nameOfFirstColorLabel: UILabel!
    @IBOutlet var nameOfRainbowLabel: UILabel!
    
    var nameOfFirstColorString: String = "Фазан"
    var nameOfRainbowString: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameOfRainbowLabel.text = nameOfRainbowString + "W"
        nameOfFirstColorLabel.text = nameOfFirstColorString
        
    }
    
    @IBAction func didTapAnotherTask(){
        let str: UIStoryboard = UIStoryboard(name: "Completed", bundle: nil)
        let SecondTask: SecondTask = str.instantiateViewController(withIdentifier: "SecondTask") as! SecondTask
        
        SecondTask.modalPresentationStyle = .fullScreen
        SecondTask.modalTransitionStyle = .crossDissolve
        
        self.present(SecondTask, animated: true)
        
    }


}
