//
//  ViewController.swift
//  HWLect7
//
//  Created by Cezar_ on 2.07.22.
//

import UIKit



class ViewController: UIViewController{
    
    
    @IBOutlet var AloneTextField: UITextField!
    @IBOutlet var AloneLabel: UILabel!

    
    var col: UIColor = .blue
    var square: UIView = UIView()
    var arrViews = [UIView]()


    enum viewColors: CaseIterable{
    case red
    case green
    case blue
    case white

    func getColor() -> UIColor{
        switch self {
        case .red:
            return UIColor.red
        case .green:
            return UIColor.green
        case .blue:
            return UIColor.blue
        case .white:
            return UIColor.white
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AloneLabel.textColor = col
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
    
    func drawSquares() {
        let textfieldInt: Int? = Int(AloneTextField.text!)
        var countX:Int = (Int(self.view.bounds.width)/(textfieldInt! + 15))
        var countY: Int = (Int(self.view.bounds.height) - Int(AloneTextField.frame.maxY)) / (textfieldInt! + 15)
        
        
        var xLocation = 15
        var yLocation = (Int(AloneTextField.frame.maxY) + 15)
        
        for i in arrViews{
            i.removeFromSuperview()

        }
        
        for i in 0..<(countX * countY) {
                arrViews.append(UIView())
        }
        
     
                var counterLines: Int = 1
        var locationY: Int = yLocation
        for i in 0..<countY {
            var locationX = xLocation
            var counter: Int = 1

            for j in 0..<countX{
                arrViews[(i*countX+j)].frame = CGRect(x: Double(locationX), y: Double(locationY), width: Double(textfieldInt!), height: Double(textfieldInt!))
                arrViews[(i*countX+j)].backgroundColor = viewColors.allCases.randomElement()!.getColor()
                self.view.addSubview(arrViews[(i*countX+j)])
                
                counter += 1
                locationX += (textfieldInt! + 15)
            }
            locationY += (textfieldInt! + 15)
            counterLines += 1
        }
        
        
        
      //  square.frame = CGRect(x: Double(xLocation), y: Double(yLocation), width: Double(textfieldInt!), height: Double(textfieldInt!))
        //square.backgroundColor = col
       // self.view.addSubview(square)
    }

    @IBAction func didTapAloneButton(){
        col = viewColors.allCases.randomElement()!.getColor()
        AloneLabel.text = AloneTextField.text
        AloneLabel.textColor = col
        drawSquares()
    }
}

