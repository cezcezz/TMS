//
//  ViewController.swift
//  HWLect4
//
//  Created by Cezar_ on 13.04.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var scores = [(code:Int, name:String)]()//Array<Int>()
       
        
        let error404 = (404, "Not found")
        let error500 = (500, "Error server")
        let error503 = (503, "Service Unavailable")
        
        scores = [error404, error500, error503]
        
        
       
        for index in 0...scores.count-1 {
            print(scores[index].code)
        }
        for item in scores{
            print(item.code)
        }
    }
    //scores.map
}

