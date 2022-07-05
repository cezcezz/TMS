//
//  SecondTask.swift
//  HWLect8
//
//  Created by Cezar_ on 5.07.22.
//
import UIKit

class userInfo{
    var userName: String?
    var userSecondName: String?
    var userAge: Int?
    
    init(userName: String, userSecondName: String, userAge: Int){
        self.userName = userName
        self.userSecondName = userSecondName
        self.userAge = userAge
    }
}


class SecondTask: UIViewController {
    
 
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var userSecondNameTextField: UITextField!
    @IBOutlet var userAgeTextField: UITextField!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
        
        
    }

    @IBAction func didTapOkButton(){
        var firstUser: userInfo = userInfo(userName: userNameTextField.text ?? "NOname", userSecondName: userSecondNameTextField.text ?? "Nothing", userAge: Int(userAgeTextField.text!) ?? 13)
        
//        firstUser.userName = userNameTextField.text ?? "NOname"
//        firstUser.userSecondName = userSecondNameTextField.text ?? "Nill"
//        firstUser.userAge = Int(userAgeTextField.text!) ?? 13
        let str: UIStoryboard = UIStoryboard(name: "Completed", bundle: nil)
        let SecondTaskPartTwo: SecondTaskPartTwo = str.instantiateViewController(withIdentifier: "SecondTaskPartTwo") as! SecondTaskPartTwo
        
        SecondTaskPartTwo.modalPresentationStyle = .fullScreen
        SecondTaskPartTwo.modalTransitionStyle = .coverVertical
        
        SecondTaskPartTwo.userNameString = firstUser.userName!
        SecondTaskPartTwo.userSecondNameString = firstUser.userSecondName!
        SecondTaskPartTwo.userAgeInt = firstUser.userAge!
        
        self.present(SecondTaskPartTwo, animated: true)
        
    }
}
