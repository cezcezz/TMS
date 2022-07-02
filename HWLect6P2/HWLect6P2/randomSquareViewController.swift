
 //  randomSquareViewController.swift
 //  HWLect6P2
 //
 //  Created by Cezar_ on 27.05.22.
import UIKit

class randomSquareViewController: UIViewController {
    
    @IBOutlet var didTapAloneButton1: UIButton!
    
//    @IBAction func didTapAloneButton() {
//        var t: Int = 0
//
//        for (var i = 0; i< someSquaresArr.count; i++){
//            randomIntSize = Int.random(in: 21..<85)
//            randomIntX = Int.random(in: 1..<Int(self.view!.bounds.width)-randomIntSize)
//            randomIntY = Int.random(in: 1..<Int(self.view!.bounds.height)-randomIntSize)
//
//            for (var j = 0; j < someSquaresArr[i].count; j++){
//                if i != j && i.frame.intersects(j.frame) {
//                    randomIntSize = Int.random(in: 21..<85)
//                    randomIntX = Int.random(in: 1..<Int(self.view!.bounds.width)-randomIntSize)
//                    randomIntY = Int.random(in: 1..<Int(self.view!.bounds.height)-randomIntSize)
//                }
//            }
//
//            i.frame = CGRect(x: Double(randomIntX), y: Double(randomIntY), width: Double(randomIntSize), height: Double(randomIntSize))
//
//
//            let temp: Int = Int.random(in: 1..<colorArr.count)
//            i.backgroundColor = colorArr[temp]
//            self.view.addSubview(i)
//        }
//
//    }

    
    
    var randomIntSize: Int = 0
    var randomIntX: Int = 1
    var randomIntY: Int = 1
    
    
    var square1: UIView = UIView()
    var square2: UIView = UIView()
    var square3: UIView = UIView()
    var square4: UIView = UIView()
    var square5: UIView = UIView()
    
    
    var someSquaresArr = [UIView]()
    var colorArr = [UIColor](arrayLiteral: .red,.blue, .black, .green, .gray, .lightGray, .purple, .yellow, .brown, .orange)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        didTapAloneButton1.layer.zPosition = 1000
      //Int.random(in: 1..<100)
        
        someSquaresArr.append(square1)
        someSquaresArr.append(square2)
        someSquaresArr.append(square3)
        someSquaresArr.append(square4)
        someSquaresArr.append(square5)
        
        
    }
  
     
     
     override func viewWillAppear(_ animated: Bool) {
         super.viewDidAppear(animated)
    
     }

     override func viewDidAppear(_ animated: Bool) {
         super.viewDidAppear(animated)
     }
     
 }
