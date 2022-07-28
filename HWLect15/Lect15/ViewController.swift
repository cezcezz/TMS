//
//  ViewController.swift
//  Lect15
//
//  Created by Cezar_ on 24.07.22.
//

import UIKit


extension UIView{
    func applyBlurEffect(_ style: UIBlurEffect.Style = .light) {
        let blurEffect = UIBlurEffect(style: style)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        addSubview(blurEffectView)
        blurEffectView.layer.zPosition = 0
    }
    
    func removeBlurEffect() {
        for view in self.subviews{
            if view is UIVisualEffectView{
                view.removeFromSuperview()
            }
        }
    }
}

extension UIViewController{
    func showError(title: String, message: String, okActionString: String,okActionClosure: (() -> Void)? = nil, anotherActionString: String? = nil, anotherActionClosure: (() -> Void)? = nil) {
        let alertViewController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: okActionString, style: .default){
            _ in okActionClosure
        }
        alertViewController.addAction(okAction)
        
        if let anotherActionString = anotherActionString {
            let anotherAction = UIAlertAction(title: anotherActionString, style: .default){
                _ in anotherActionClosure
            }
            alertViewController.addAction(anotherAction)
        }
        self.present(alertViewController, animated: true)
    }
    
    func inputName(title: String, message: String, okActionString: String, okActionClosure: (() -> Void)? = nil) {
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: okActionString, style: .default){
            _ in okActionClosure
        }
        alertVC.addAction(okAction)
        
        
        alertVC.addTextField { nameField in
            nameField.placeholder = "Your name"
        }
        self.present(alertVC, animated: true)

    }
}

class ViewController: UIViewController {

    @IBOutlet var leftSize: NSLayoutConstraint!
    @IBOutlet var movedView: UIView!
    @IBOutlet var bigRedView: UIView!
    
    var blurViewFree: UIView = UIView()
    
    var burgerLabel = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        burgerLabel.frame = CGRect(x: 50, y: 100, width: 90, height: 30)
        burgerLabel.backgroundColor = .red
        
        leftSize.constant = -240
        
        let tapLabel = UITapGestureRecognizer(target: self, action: #selector(didTapBurgerButon))
        burgerLabel.addGestureRecognizer(tapLabel)
        let tapGest = UITapGestureRecognizer(target: self, action: #selector(didTapBurgerView))
        movedView.addGestureRecognizer(tapGest)
        
        let tapNextViewController = UISwipeGestureRecognizer(target: self, action: #selector(didSwipeBigRedView))
        bigRedView.addGestureRecognizer(tapNextViewController)
        tapNextViewController.direction = .right
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        UIView.animate(withDuration: 3){
            self.view.layoutIfNeeded()
        }
        self.view.addSubview(burgerLabel)
        
        blurViewFree.frame = self.view.bounds
        
    }
    
    @IBAction func didTapFirstButton(){
        self.showError(title: "OH shit", message: "Here we go AGAIN", okActionString: "OK", anotherActionString: "Cancel")
    }
    
    @IBAction func didtapAnotherButton(){
        self.showError(title: "OH shit", message: "Here we go AGAIN", okActionString: "Understend")
    }
    
    @IBAction func didTapinputNameButton(){
        print("Tap input nameButton")
        self.inputName(title: "OH IT's NEW RECORD!", message: "I'd like to know new recordsmen's name", okActionString: "OK")
    }
    
    @objc func didTapBurgerButon(){
        blurViewFree.applyBlurEffect()
        self.view.addSubview(blurViewFree)
        self.view.addSubview(movedView)
        print("tap")
        self.movedView.layer.zPosition = 100
        self.blurViewFree.alpha = 0
     //   self.view.applyBlurEffect()

        UIView.animate(withDuration: 2){
            self.leftSize.constant = 0
            self.blurViewFree.alpha = 1
            self.view.layoutIfNeeded()
        }completion: { _ in
            //self.view.removeBlurEffect()
        }
        burgerLabel.removeFromSuperview()
    
       
        
        
    }
    
    @objc func didSwipeBigRedView(){
        print("swiped")
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let secondViewController: SecondViewController = str.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    @objc func didTapBurgerView(){
        print("tap")
            // self.movedView.layer.zPosition = 1
        self.blurViewFree.alpha = 1
        self.leftSize.constant = -240
        UIView.animate(withDuration: 1){
            self.view.layoutIfNeeded()
            self.blurViewFree.alpha = 0
        } completion: { _ in
            self.blurViewFree.removeFromSuperview()
        }
        self.view.addSubview(burgerLabel)
    }
}

