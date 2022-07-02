//
//  ViewController.swift
//  Lect19
//
//  Created by Cezar_ on 20.06.22.
//

import UIKit

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()d
       
        var date = Date()
        
        var dateFormatter = DateFormatter()
        //dateFormatter.dateFormat = "yyyy -MM-dd, HH:mm:ss"
        dateFormatter.timeZone = TimeZone(identifier: "UTC")
        var stringDate = dateFormatter.string(from: date)
        
        print(date)
        print(stringDate)

        bbbggggfff
        var stringDate1 = "22 Jan 1087, 8:22:07 PM"
        dateFormatter.dateFormat = "d MMM yyyy, h:mm:ss a"
        var newDate = dateFormatter.date(from: stringDate1)
        
        print(newDate)
        
    
    }

}

