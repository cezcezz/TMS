//
//  CustomClassShowViewController.swift
//  HWLect9
//
//  Created by Cezar_ on 9.07.22.
//

 import UIKit

 class CustomClassShowViewController: UIViewController{
//     var userNameString: String = ""
//     var userSecondNameString: String = ""
//     var userAgeInt: Int = 0
     
     @IBOutlet var nameUserLabel: UILabel!
     @IBOutlet var secondNameUserLabel: UILabel!
     @IBOutlet var ageUserLabel: UILabel!
    
    var userShared: UserDataInfo = UserDataInfo(name: "", secondName: "", age: 1)
     
     override func viewDidLoad() {
         super.viewDidLoad()
         
         nameUserLabel.text = userShared.name
         secondNameUserLabel.text = userShared.secondName
         ageUserLabel.text = String(userShared.age)

     }
 }
