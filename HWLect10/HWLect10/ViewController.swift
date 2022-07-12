//
//  ViewController.swift
//  HWLect10
//
//  Created by Cezar_ on 10.07.22.
//

import UIKit


class ViewController: UIViewController {
    
    enum NumOperation {
    case plus
    case minus
    case mnozhit
    case delit
    }
    
    var operationNumb: NumOperation = NumOperation.plus
    
    @IBOutlet var mainLabel: UILabel!
    
    @IBOutlet var view1: UIView!
    @IBOutlet var view2: UIView!
    @IBOutlet var view3: UIView!
    @IBOutlet var view4: UIView!
    @IBOutlet var view5: UIView!
    @IBOutlet var view6: UIView!
    @IBOutlet var view7: UIView!
    @IBOutlet var view8: UIView!
    @IBOutlet var view9: UIView!
    
    @IBOutlet var button0: UIButton!
    @IBOutlet var buttonDubble: UIButton!
    @IBOutlet var buttonRavno: UIButton!
    
    @IBOutlet var viewPlus: UIView!
    @IBOutlet var viewMinus: UIView!
    @IBOutlet var viewDelit: UIView!
    @IBOutlet var viewMnozhit: UIView!
    @IBOutlet var viewPercent: UIView!
    @IBOutlet var viewOtric: UIView!
    @IBOutlet var viewClear: UIView!
    
    var firstNumber: Int = 0
    var secondNumber: Int = 0
    var resultNumber: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = ""
        
        view1.clipsToBounds = true
        view1.layer.cornerRadius = view1.frame.width/CGFloat(2)
        let tapView1 = UITapGestureRecognizer(target: self, action: #selector(tapView1objc))
        view1.addGestureRecognizer(tapView1)
        
        view2.clipsToBounds = true
        view2.layer.cornerRadius = view2.frame.width/CGFloat(2)
        let tapView2 = UITapGestureRecognizer(target: self, action: #selector(tapView2objc))
        view2.addGestureRecognizer(tapView2)

        
        view3.clipsToBounds = true
        view3.layer.cornerRadius = view3.frame.width/CGFloat(2)
        
        view4.clipsToBounds = true
        view4.layer.cornerRadius = view4.frame.width/CGFloat(2)
        
        view5.clipsToBounds = true
        view5.layer.cornerRadius = view5.frame.width/CGFloat(2)
        view6.clipsToBounds = true
        view6.layer.cornerRadius = view6.frame.width/CGFloat(2)
        
        view7.clipsToBounds = true
        view7.layer.cornerRadius = view7.frame.width/CGFloat(2)
        
        view8.clipsToBounds = true
        view8.layer.cornerRadius = view8.frame.width/CGFloat(2)
        
        view9.clipsToBounds = true
        view9.layer.cornerRadius = view9.frame.width/CGFloat(2)
        
        viewPlus.clipsToBounds = true
        let tapViewPlus = UITapGestureRecognizer(target: self, action: #selector(tapViewPlusobjc))
        viewPlus.addGestureRecognizer(tapViewPlus)
        viewPlus.layer.cornerRadius = viewPlus.frame.width/CGFloat(2)
        
        viewMinus.clipsToBounds = true
        let tapViewMinus = UITapGestureRecognizer(target: self, action: #selector(tapViewMinusobjc))
        viewMinus.addGestureRecognizer(tapViewMinus)
        viewMinus.layer.cornerRadius = viewMinus.frame.width/CGFloat(2)
        
        viewDelit.clipsToBounds = true
        let tapViewDelit = UITapGestureRecognizer(target: self, action: #selector(tapViewDelitobjc))
        viewDelit.addGestureRecognizer(tapViewDelit)
        viewDelit.layer.cornerRadius = viewDelit.frame.width/CGFloat(2)
        
        viewMnozhit.clipsToBounds = true
        let tapViewMnozhit = UITapGestureRecognizer(target: self, action: #selector(tapViewMnozhitobjc))
        viewMnozhit.addGestureRecognizer(tapViewMnozhit)
        viewMnozhit.layer.cornerRadius = viewMnozhit.frame.width/CGFloat(2)
        
        viewPercent.clipsToBounds = true
        viewPercent.layer.cornerRadius = viewPercent.frame.width/CGFloat(2)
        
        viewOtric.clipsToBounds = true
        viewOtric.layer.cornerRadius = viewOtric.frame.width/CGFloat(2)
        
        viewClear.clipsToBounds = true
        let tapViewClear = UITapGestureRecognizer(target: self, action: #selector(tapViewClearobjc))
        viewClear.addGestureRecognizer(tapViewClear)
        viewClear.layer.cornerRadius = viewClear.frame.width/CGFloat(2)
        
        button0.clipsToBounds = true
        button0.layer.cornerRadius = buttonRavno.frame.width/CGFloat(2)
        
        buttonRavno.clipsToBounds = true
        let tapViewRavno = UITapGestureRecognizer(target: self, action: #selector(tapButtonRavno))
        buttonRavno.addGestureRecognizer(tapViewRavno)
        buttonRavno.layer.cornerRadius = buttonRavno.frame.width/CGFloat(2)
        
        buttonDubble.clipsToBounds = true
        buttonDubble.layer.cornerRadius = buttonDubble.frame.width/CGFloat(2)
        
      
        
    }
    
    @objc func tapView1objc(){
        mainLabel.text! = mainLabel.text! + "1"
        
        if firstNumber != 0 {
            secondNumber = Int(mainLabel.text!) ?? 1
        } else if firstNumber == 0{
            firstNumber = Int(mainLabel.text!) ?? 1
            
        }
        
    }
    
    @objc func tapView2objc(){
        if firstNumber != 0 {
            secondNumber = 2
        } else if firstNumber == 0{
            firstNumber = 2
        }
        mainLabel.text = String(2)
    }
    
    @objc func tapViewPlusobjc(){
        operationNumb = .plus
    }
    @objc func tapViewMinusobjc(){
        operationNumb = .minus
    }
    @objc func tapViewMnozhitobjc(){
        operationNumb = .mnozhit
    }
    
    @objc func tapViewDelitobjc(){
        operationNumb = .delit
    }
    
    @objc func tapViewClearobjc(){
        firstNumber = 0
        secondNumber = 0
        mainLabel.text = "0"
    }
    
    
    
    
    
    @objc func tapButtonRavno(){
        if firstNumber != 0 && secondNumber != 0{
            switch operationNumb {
            case .plus:
                resultNumber = firstNumber + secondNumber
            case .minus:
                resultNumber = firstNumber - secondNumber
            case .mnozhit:
                resultNumber = firstNumber * secondNumber
            case .delit:
                resultNumber = firstNumber / secondNumber

            }
            firstNumber = resultNumber
            secondNumber = 0
            
        }
        mainLabel.text = String(resultNumber)
    }


}

