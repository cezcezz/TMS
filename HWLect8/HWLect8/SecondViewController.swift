//
//  SecondViewController.swift
//  HWLect8
//
//  Created by Cezar_ on 5.07.22.

 import UIKit

 class SecondViewController: UIViewController {

     @IBOutlet var enteredStringLible: UILabel!
     @IBOutlet var nameOfFirstColorLabel: UILabel!
     @IBOutlet var nameOfRainbowLabel: UILabel!
     
     var nameOfFirstColorString: String = "Охотник"
     var nameOfRainbowString: String = ""
     
     
     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
         
         self.nameOfRainbowLabel.text = nameOfRainbowString + "A"
         self.nameOfFirstColorLabel.text = nameOfFirstColorString
         
     }

     @IBAction func didTapGoToNextScreenButton(){
         let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
         let ThirdViewController: ThirdViewController = str.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
         
         
         
         ThirdViewController.modalPresentationStyle = .fullScreen
         ThirdViewController.modalTransitionStyle = .crossDissolve
         
         ThirdViewController.nameOfRainbowString = self.nameOfRainbowLabel.text ?? "keks"
         
         
         self.present(ThirdViewController, animated: true)
         ThirdViewController.enteredStringLible.text = self.enteredStringLible.text
         
     }

 }


