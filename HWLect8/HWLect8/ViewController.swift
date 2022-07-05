//
//  ViewController.swift
//  HWLect8
//
//  Created by Cezar_ on 5.07.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var aloneTextField: UITextField!
    
    @IBOutlet var enteredStringLible: UILabel!
    @IBOutlet var nameOfFirstColorLabel: UILabel!
    @IBOutlet var nameOfRainbowLabel: UILabel!
    
    var nameOfFirstColorString: String = "Каждый"
    var nameOfRainbowString: String = "R"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }

    @IBAction func didTapAddTitleButton(){
        enteredStringLible.text = aloneTextField.text
        nameOfFirstColorLabel.text = nameOfFirstColorString
        nameOfRainbowLabel.text = nameOfRainbowString
    }
    
    @IBAction func didTapGoToNextScreenButton(){
        
        
    let  str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let SecondViewController: SecondViewController = str.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        SecondViewController.modalPresentationStyle = .fullScreen
        SecondViewController.modalTransitionStyle = .crossDissolve
        
       
        SecondViewController.nameOfRainbowString = nameOfRainbowLabel.text!
        
        
        self.present(SecondViewController, animated: true)
        SecondViewController.enteredStringLible.text =  enteredStringLible.text
    }

    
    @IBAction func didTapOpenSecondTask(){
        let str: UIStoryboard = UIStoryboard(name: "Completed", bundle: nil)
        let SecondTask: SecondTask = str.instantiateViewController(withIdentifier: "SecondTask") as! SecondTask
        
        SecondTask.modalPresentationStyle = .fullScreen
        SecondTask.modalTransitionStyle = .coverVertical
        
        self.present(SecondTask, animated: true)
    }
}

