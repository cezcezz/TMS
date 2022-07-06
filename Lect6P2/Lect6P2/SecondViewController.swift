//
//  SecondViewController.swift
//  Lect6P2
//
//  Created by Cezar_ on 5.07.22.


 import UIKit

 class SecondViewController: UIViewController {

     
     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
         
        

     }
     
     
     @IBAction func didTapOpenSettingsButton(){
         let str: UIStoryboard = UIStoryboard(name: "Settings", bundle: nil)
         let SettingsViewController: SettingsViewController = str.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
         
         SettingsViewController.modalPresentationStyle = .fullScreen
        //SettingsViewController.modalTransitionStyle = .partialCurl
         
         SettingsViewController.pastViewControllerString = "SecondViewController"
         
         self.present(SettingsViewController, animated: true)
     }


 }
