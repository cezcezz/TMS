//
//  ViewController.swift
//  Lect17
//
//  Created by Cezar_ on 2.06.22.
//

import UIKit

class ViewController: UIViewController {
    
    class Record: Codable {
        let nameUser: String
        
        
        init(nameUser: String)
        {
            self.nameUser = nameUser
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        UserDefaults.standard.set(true, forKey: "isEnebledTapView")
        
        UserDefaults(suiteName: "Name1")?.set(true, forKey: "isEnebledTapView1")
        
        
        let isEnebledTapView = UserDefaults.standard.bool(forKey: "isEnebledTapView")
    }
    let date: Date.
}

