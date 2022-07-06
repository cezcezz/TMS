//
//  SecondTaskPartTwo.swift
//  HWLect8
//
//  Created by Cezar_ on 5.07.22.
//

import UIKit


 class SecondTaskPartTwo: UIViewController {

     
     @IBOutlet var userNameLabel: UILabel!
     @IBOutlet var userSecondNameLabel: UILabel!
     @IBOutlet var userAgeLabel: UILabel!

     var userNameString: String = ""
     var userSecondNameString: String = ""
     var userAgeInt: Int = 0
     
     override func viewDidLoad() {
         super.viewDidLoad()
        
         userNameLabel.text = userNameString
         userSecondNameLabel.text = userSecondNameString
         userAgeLabel.text = String(userAgeInt)
     }
     
     @IBAction func TrueHardTaskViewControllerButton(){
         let str:UIStoryboard = UIStoryboard(name: "Completed", bundle: nil)
         let TrueHardTaskViewController: TrueHardTaskViewController = str.instantiateViewController(withIdentifier: "TrueHardTaskViewController") as! TrueHardTaskViewController
         TrueHardTaskViewController.modalPresentationStyle = .fullScreen
         
         self.present(TrueHardTaskViewController, animated: true)
     }
    
 }
 
