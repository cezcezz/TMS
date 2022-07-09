//
//  CustomClass.swift
//  HWLect9
//
//  Created by Cezar_ on 8.07.22.
//

import UIKit

class UserDataInfo{
    var name: String = ""
    var secondName: String = ""
    var age: Int = 0
    
    init(name: String, secondName: String, age:Int){
        self.name = name
        self.secondName = secondName
        self.age = age
    }
}


class CustomClass: UIViewController{
    
    @IBOutlet var nameTextField: UITextField!

    @IBOutlet var secondNameTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    @IBAction func didTapOkButton(){
        let str: UIStoryboard = UIStoryboard(name: "REDO", bundle: nil)
        let customClassShowViewController: CustomClassShowViewController = str.instantiateViewController(withIdentifier: "CustomClassShowViewController") as! CustomClassShowViewController
        
        guard let ageUser = ageTextField.text else {
            //self.ageUser = "12"
            return
        }
        guard let nameUser = nameTextField.text else {
            //self.nameUser = "NoName"
            return
        }
        guard let secondNameUser = secondNameTextField.text else {
           // self.secondNameUser = "NoSecondName"
            return
        }

        
        customClassShowViewController.userShared.age = Int(ageUser) ?? 12
        customClassShowViewController.userShared.name = nameUser
        customClassShowViewController.userShared.secondName = secondNameUser
        
        
        self.navigationController?.pushViewController(customClassShowViewController, animated: true)
    }
}
