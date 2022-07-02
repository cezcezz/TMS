//
//  ViewController.swift
//  lect12
//
//  Created by Cezar_ on 19.05.22.
//

import UIKit

class User {
    var firstName: String
    var lastName: String
    var secondName: String?
    
    init( firstName: String, lastName: String, secondName: String? = nil){
        self.firstName = firstName
        self.lastName = lastName
        self.secondName = secondName
    }
}

class ViewController: UIViewController {

    var index: Int = 0
    var index1: Int? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        let user1 = User(firstName: "firstName", lastName: "lastName")
        let user2 = User(firstName: "firstName", lastName: "lastName", secondName: "secondName")
        

        print(user1.firstName)
    print(user2)

    }
}

