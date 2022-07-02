//
//  ViewController.swift
//  Lect14
//
//  Created by Cezar_ on 26.05.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var labelRainbow: UILabel!
    
    
    var customView: UIView = UIView()
    
    var array: [String] = ["fdsfsd","dsaasd","dasd"]
    var dic: [Int: String] = [404:"Not Found",200:"Succses", 500:"asdasd", 900:"23434"]
    
    var anyDicArr: [Int: Any] = [:]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let messageCode: Int = 200
        
        anyDicArr = [messageCode: array]
        anyDicArr[32] = [432,32432,234]
       // anyDicArr = [232: [32,32432,234]]
        
        for dict in anyDicArr {
            print(dict)
        }
        
        label1.text = "Hello World"
        label1.font = UIFont.systemFont(ofSize: 14)
        label1.textColor = UIColor.systemGreen
        
        let string = "RAINBOW"
        
        let attributed: [NSAttributedString.Key : Any] = [NSAttributedString.Key.foregroundColor : UIColor.green, NSAttributedString.Key.font : UIFont.systemFont(ofSize: 40)]

        let attrString = NSMutableAttributedString(string: string, attributes: attributed)
        
        attrString.addAttributes([NSAttributedString.Key.foregroundColor : UIColor.systemRed],range: NSRange(location: 0, length: 1))
        
        attrString.addAttributes([NSAttributedString.Key.foregroundColor : UIColor.orange],range: NSRange(location: 1, length: 1))
        
        attrString.addAttributes([NSAttributedString.Key.foregroundColor : UIColor.systemYellow],range: NSRange(location: 2, length: 1))
        
        attrString.addAttributes([NSAttributedString.Key.foregroundColor : UIColor.systemGreen],range: NSRange(location: 3, length: 1))
        
        attrString.addAttributes([NSAttributedString.Key.foregroundColor : UIColor.systemBlue],range: NSRange(location: 4, length: 1))
        
        attrString.addAttributes([NSAttributedString.Key.foregroundColor : UIColor.blue],range: NSRange(location: 5, length: 1))
        
        attrString.addAttributes([NSAttributedString.Key.foregroundColor : UIColor.purple],range: NSRange(location: 6, length: 1))
        
        labelRainbow.attributedText = attrString
        
        
        
        
        
//        print(dic[messageCode])
//
//        for dict in dic {
//            print(dict)
//        }
//
//        for (key, value) in dic{
//            print(key)
//        }
//
//        for i in array{
//            print(i)
//        }
//
//        for dict in anyDicArr {
//            print(dict)
//        }
    }


}

